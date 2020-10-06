<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>check schedule</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Roboto+Condensed');

$unit: 3vmin;
$day-width: $unit * 3;
$day-height: $day-width;
$width: $day-width * 2 + $day-width * 7;
$height-collapsed: $day-width;
$height-expanded: $day-width * 7;
$duration: 1.2s;

input[type="radio"] {
  position: absolute;
  opacity: 0;
}

.ui-calendar {  position: relative; }

.ui-header {
  cursor: pointer;
  position: absolute;
  top: 0;
  left: 0;
  transform: translateX($unit);
  width: 100%;
  height: $day-width;
  line-height: $day-width;
  text-transform: uppercase;

  > .ui-text {
    position: absolute;
    height: 100%;
    transform: translateX(0);
    display: flex;
    justify-content: center;
    align-items: center;
    letter-spacing: inherit;

    &.-month-year {
      opacity: 0;
    }
  }
}

/* ---------------------------------- */

.ui-grid {
  position: absolute;
  top: 0; right: 0; bottom: 0; left: 0;
  margin: $day-width;
  z-index: 100;
  pointer-events: none;
}

.ui-column,
.ui-row {
  position: absolute;
  border: solid 0px;
  border-color: #797979;
  transform-origin: top right;
  transition-duration: #{$duration * 0.5};
  transition-timing-function: cubic-bezier(.5,0,.55,1);
  transition-property: transform, border-color;
}

.ui-row {
  left: 0;
  right: 0;
  border-top-width: 1px;
}

.ui-column {
  top: 0;
  bottom: 0;
  border-left-width: 1px;
}

$icon-scale: 0.75;

.ui-row {
  transform: 
    translate( 
      #{$day-width * ($icon-scale)}, 
      calc( 

        #{
          $day-width * -1 
          + ($day-width / 2 * $icon-scale / 2)
        }
        + (var(--row) - 1) 
      * #{$day-width* $icon-scale} 
      / var(--rows) 
    ) 
    ) 
    scaleX(#{ 0.13 * $icon-scale });

  transition-delay: calc(var(--row) * 60ms);
}

.ui-column {
  transform: 
    translate( 
      calc( 
        #{$day-width * (-1.25 * $icon-scale)} 
        + ((var(--columns)) * #{$day-width}) 
        + (var(--col) - 1) * #{$day-width * $icon-scale} 
      / var(--columns) 
    ), 
    #{
      $day-width * -1 
      + ($day-width / 2 * $icon-scale / 2)
    }
    ) 
    scaleY( #{0.17 * $icon-scale} );

  transition-delay: calc( ( (var(--columns) - var(--col)) * 60ms ));
}

.ui-calendar:focus {
  
  .ui-column,
  .ui-row {
    border-color: #E3E3E3
  }
  
  .ui-row { 
    transform: 
      translate( 
        0em, 
        calc( 
          (var(--row) - 1) 
        * #{$day-width } 
      ) 
      ) 
      scaleX(1);
    transition-delay: calc(var(--row) * 40ms);
  }
  .ui-column { 
    transform: 
      translate( 
        calc( 
          (var(--col) - 1)
        * #{$day-width} 
      ), 0em 
      ) 
      scaleY(1);
    
    transition-delay: calc( ( (var(--columns) - var(--col)) * 40ms ));
  }
}


/* ---------------------------------- */

.ui-text {
  white-space: nowrap;
  font-size: $unit;

  &.-month-year {
    &:before, &:after {
      position: absolute;
      content: '';
      top: $unit;
      height: $unit;
      width: $unit;
      border: 2px solid gray;
      border-right: none;
      border-bottom: none;
      transition-duration: $duration * 2 / 3;
    }

    &:before {
      transform: scale(1, 1) translateX(0) rotate(-45deg);
      transition-delay: $duration * 1 / 3;
      left: -$unit * 6;
    }

    &:after {
      transform: scale(1, 1) translateX(0) rotate(135deg);
      transition-delay: $duration * 2 / 3;
      right: -$unit * 6;
    }
  }
}

@mixin range($min, $max) {
  &:nth-of-type(n + #{$min}):nth-of-type(-n + #{$max}) {
    @content;
  }
}

.ui-day {
  display: flex;
  position: absolute;
  height: $day-height;
  width: $day-width;
  justify-content: center;
  align-items: center;
  transform: translate(var(--x, 0), var(--y));
  font-size: $unit;
  cursor: pointer;
  
  &:before {
    content: attr(data-day);
    transition-delay: calc(#{$duration * 0} + (30 - var(--day)) * 20ms);
    transition-duration: $duration / 3;
    transform: scale(0);
    opacity: 0;
  }

  @for $i from 1 through 5 {
    @include range(($i - 1) * 7 + 1, ($i - 1) * 7 + 7) {
      --y: #{$day-width * $i};
    }
  }

  @for $i from 1 through 7 {
    &:nth-of-type(7n + #{$i}) {
      --x: #{$day-width + ($i - 1) * $day-width};
    }
  }
}


@for $i from 1 through 30 {
  #day-#{$i}:checked ~ .ui-calendar .ui-day[for="day-#{$i}"] {
    transform: translate(0, 1px);

    &:before {
      transform: none;
      opacity: 1;
    }
  }
}

.ui-reset {
  // opacity: .5;
  position: absolute;
  appearance: none;
  -webkit-appearance: none;
  border: none;
  background: none;
  font: inherit;
  font-size: 0.7em;
  right: #{$day-width * 1.2} ;
  top: 0;
  height: $day-width;
  padding: 0.25em 0.5em;
  
  opacity: 0;
  pointer-events: none;
}

input:checked ~ .ui-reset { opacity: 0.5; pointer-events: auto; }

.ui-calendar {
  height: $height-expanded;
  width: $width;
  
  > .ui-bg {
    transform: scaleY($height-collapsed / $height-expanded);
  }
  
  /* Fix for clickable items outside of collapsed height */
  pointer-events: none;
  .ui-header { pointer-events: auto; }
  &:focus {
    pointer-events: auto;

    > .ui-header {
      transform: translateX(50%);

      > .ui-text {
        transform: translateX(-50%);

        &.-empty {
          opacity: 0;
        }
        &.-month-year {
          opacity: 1;
        }
      }
    }

    > .ui-bg {
      transform: none;
      transition-delay: 0s;
    }

    .ui-day:before {
      transform: none;
      opacity: 1;
      transition-delay: calc(#{$duration * 0.5} + var(--day) * 20ms);
    }
  }

  input:checked ~ & {
    > .ui-header {
      transform: translateX($day-width - $unit / 2);

      > .ui-text {
        transform: none;

        &.-empty {
          opacity: 0;
        }
        &.-month-year {
          opacity: 1;
        }
      }
    }
     
    .ui-text.-month-year {
      &:before, &:after {
        opacity: 0;
        transition-delay: 0s !important;
      }
    }
  }
  
  &:not(:focus) {
    .ui-text.-month-year {
      &:before {
        transform: scale(2, 0) translateX(500%) rotate(-45deg) ;
      }

      &:after {
        transform: scale(2, 0) translateX(-500%) rotate(135deg) ;
      }
    }
  }

  input:checked ~ &:not(:focus) {
    .ui-day:before {
      transition-delay: calc((30 - var(--day)) * 10ms);
    }
  }
}

/* ---------------------------------- */

.ui-bg {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: #fff;
  transform-origin: top center;
  box-shadow: 0 1rem 1rem rgba(black, 0.2);
  transition-duration: #{$duration * 0.5};
  transition-delay: #{$duration * 0.4};
  overflow: hidden;
}

body {
  background-color: #649EAA;  
  display: flex;
  justify-content: center;
  align-items: center;
  font-family: 'Roboto Condensed', sans-serif;
  letter-spacing: 1px;
  overflow: hidden;
  color: #242424;
}

*:focus {
  outline: none;
}

// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

*, *:before, *:after {
  transition-property: transform, opacity;
  transition-duration: $duration;
  transition-timing-function: cubic-bezier(.5, 0, .5, 1);
  box-sizing: border-box;
  position: relative;
}

body, html {
  padding: 0;
  margin: 0;
  height: 100%;
  width: 100%;
}
</style>
</head>
<body>
<a href="https://youtu.be/_8OMGE87e2Q" target="_blank" data-keyframers-credit style="color: #FFF"></a>
<script src="https://codepen.io/shshaw/pen/QmZYMG.js"></script>

<form>
  <input type="radio" name="day" id="day-1" />
  <input type="radio" name="day" id="day-2" />
  <input type="radio" name="day" id="day-3" />
  <input type="radio" name="day" id="day-4" />
  <input type="radio" name="day" id="day-5" />
  <input type="radio" name="day" id="day-6" />
  <input type="radio" name="day" id="day-7" />
  <input type="radio" name="day" id="day-8" />
  <input type="radio" name="day" id="day-9" />
  <input type="radio" name="day" id="day-10" />
  <input type="radio" name="day" id="day-11" />
  <input type="radio" name="day" id="day-12" />
  <input type="radio" name="day" id="day-13" />
  <input type="radio" name="day" id="day-14" />
  <input type="radio" name="day" id="day-15" />
  <input type="radio" name="day" id="day-16" />
  <input type="radio" name="day" id="day-17" />
  <input type="radio" name="day" id="day-18" />
  <input type="radio" name="day" id="day-19" />
  <input type="radio" name="day" id="day-20" />
  <input type="radio" name="day" id="day-21" />
  <input type="radio" name="day" id="day-22" />
  <input type="radio" name="day" id="day-23" />
  <input type="radio" name="day" id="day-24" />
  <input type="radio" name="day" id="day-25" />
  <input type="radio" name="day" id="day-26" />
  <input type="radio" name="day" id="day-27" />
  <input type="radio" name="day" id="day-28" />
  <input type="radio" name="day" id="day-29" />
  <input type="radio" name="day" id="day-30" />
  <input type="radio" name="day" id="day-31" />
  <input type="radio" name="day" id="day-32" />
  <input type="radio" name="day" id="day-33" />
  <input type="radio" name="day" id="day-34" />
  <input type="radio" name="day" id="day-35" />

  <div class="ui-calendar" tabindex="0">
    <div class="ui-bg"></div>
    <header class="ui-header">
      <span class="ui-text -empty">Pick your date</span>
      <span class="ui-text -month-year">
        November, 2018
      </span>
    </header>

    <div class="ui-grid" style="--columns: 8; --rows: 6">
      <div class="ui-row" style="--row: 1"></div>
      <div class="ui-row" style="--row: 2"></div>
      <div class="ui-row" style="--row: 3"></div>
      <div class="ui-row" style="--row: 4"></div>
      <div class="ui-row" style="--row: 5"></div>
      <div class="ui-row" style="--row: 6"></div>
      <div class="ui-column" style="--col: 1"></div>
      <div class="ui-column" style="--col: 2"></div>
      <div class="ui-column" style="--col: 3"></div>
      <div class="ui-column" style="--col: 4"></div>
      <div class="ui-column" style="--col: 5"></div>
      <div class="ui-column" style="--col: 6"></div>
      <div class="ui-column" style="--col: 7"></div>
      <div class="ui-column" style="--col: 8"></div>
    </div>

    <!--  Dates go here  -->

    <label class="ui-day" for="day-1" data-day="1" style="--day: 1"></label>
    <label class="ui-day" for="day-2" data-day="2" style="--day: 2"></label>
    <label class="ui-day" for="day-3" data-day="3" style="--day: 3"></label>
    <label class="ui-day" for="day-4" data-day="4" style="--day: 4"></label>
    <label class="ui-day" for="day-5" data-day="5" style="--day: 5"></label>
    <label class="ui-day" for="day-6" data-day="6" style="--day: 6"></label>
    <label class="ui-day" for="day-7" data-day="7" style="--day: 7"></label>
    <label class="ui-day" for="day-8" data-day="8" style="--day: 8"></label>
    <label class="ui-day" for="day-9" data-day="9" style="--day: 9"></label>
    <label class="ui-day" for="day-10" data-day="10" style="--day: 10"></label>
    <label class="ui-day" for="day-11" data-day="11" style="--day: 11"></label>
    <label class="ui-day" for="day-12" data-day="12" style="--day: 12"></label>
    <label class="ui-day" for="day-13" data-day="13" style="--day: 13"></label>
    <label class="ui-day" for="day-14" data-day="14" style="--day: 14"></label>
    <label class="ui-day" for="day-15" data-day="15" style="--day: 15"></label>
    <label class="ui-day" for="day-16" data-day="16" style="--day: 16"></label>
    <label class="ui-day" for="day-17" data-day="17" style="--day: 17"></label>
    <label class="ui-day" for="day-18" data-day="18" style="--day: 18"></label>
    <label class="ui-day -current" for="day-19" data-day="19" style="--day: 19"></label>
    <label class="ui-day" for="day-20" data-day="20" style="--day: 20"></label>
    <label class="ui-day" for="day-21" data-day="21" style="--day: 21"></label>
    <label class="ui-day" for="day-22" data-day="22" style="--day: 22"></label>
    <label class="ui-day" for="day-23" data-day="23" style="--day: 23"></label>
    <label class="ui-day" for="day-24" data-day="24" style="--day: 24"></label>
    <label class="ui-day" for="day-25" data-day="25" style="--day: 25"></label>
    <label class="ui-day" for="day-26" data-day="26" style="--day: 26"></label>
    <label class="ui-day" for="day-27" data-day="27" style="--day: 27"></label>
    <label class="ui-day" for="day-28" data-day="28" style="--day: 28"></label>
    <label class="ui-day" for="day-29" data-day="29" style="--day: 29"></label>
    <label class="ui-day" for="day-30" data-day="30" style="--day: 30"></label>
  </div>
  <button type="reset" class="ui-reset">reset</button>
</form>



</body>
</html>