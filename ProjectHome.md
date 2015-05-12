**The problem:**

You have an AS3 Flash movie embedded in a page. You are using mousewheel events inside your Flash (for zooming, scrolling, etc), but don't want the browser window to scroll at the same time, while the mouse is over the Flash (just like AS2).

**The solution:**
```
import com.spikything.utils.MouseWheelTrap;
MouseWheelTrap.setup(stage);
```

...and you're done.

**UPDATE:**

I need help to isolate which browser varieties, versions and operating systems MouseWheelTrap doesn't work on, since I'm not sure the JavaScript injection technique I'm using is applicable to all platforms - but will try to find a fix, where possible.

Thanks

**P.S.**

If wishing to use the utility in combination with the Flex framework, this post may be helpful: https://getsatisfaction.com/modestmaps/topics/mousewheel_vs_browser_scrolling