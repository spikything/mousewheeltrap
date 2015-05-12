Just import the class to your main class (or whereever else you want to, as long as you have a valid reference to 'stage' from there), then just call MouseWheelTrap.setup(stage), like so:
```
import com.spikything.utils.MouseWheelTrap;
MouseWheelTrap.setup(stage);
```

MouseWheelTrap uses JavaScript (and some internal logic) to manage mousewheel events, but the code is injected at runtime, so no external JavaScript files are currently required. Since many developers may not have control over the HTML that embeds their SWF, I opted against using JQuery or similar, good as it is. I would be interested to hear how this performs on different operating systems and browsers though.