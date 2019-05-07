# 生命周期
组件的生命周期：如同人有生老病死，自然界有日月更替。每个组件在网页中也会被创建、更新和删除，如同有生命的机体一样。
React严格定义了组件的生命周期，生命周期可能会经历如下三个过程：

装载过程（Mount），也就是把组件第一次在DOM树中渲染的过程；
更新过程（Update），当组件被重新渲染的过程。
卸载过程（Unmount），组件从DOM中删除的过程。

三种不同的过程，React库会依次调用组件的一些成员函数，这些函数称为生命周期函数。所以，要定制一个React组件，实际上就是定制这些生命周期函数。

### 1、装载过程（Mount）：
装载过程，当组件第一次被渲染的时候，依次调用如下函数：

- `constructor`
- `getInitialState`
- `getDefaultProps`
- `componentWillMount`
- `render`
- `componentDidMount`

### 2、更新过程（Update）：
当组件被装载到DOM树上之后，用户在网页上可以看到组件的第一印象，但是要提供更好的交互体验，就要让该组件可以随着用户操作改变展现的内容，当`props`或者`state`被修改的时候，就会引发组件的更新过程。
更新过程会依次调用下面的生命周期函数，其中render函数和装载过程一样，没有差别：

- `componentWillReceiveProps`
- `shouldComponentUpdate`
- `componentWillUpdate`
- `render`
- `componentDidUpdate`

注意：并不是所有的更新过程都会执行全部函数。
### 3、卸载过程（Unmount）
React组件的卸载过程只涉及一个函数`componentWillUnmount`，当React组件要从DOM树上删除掉之前，对应的`componentWillUnmount`函数会被调用，所以这个函数适合做一些清理的工作。
和装载过程与更新过程不一样，这个函数没有配对的Did函数，就一个函数，因为卸载完就完了，没有“卸载完再做的事情”。
`componentWillUnmount`中的工作往往和`componentDidMount`有关，比如，在`componentDidMount`中用非React的方法创造了一些DOM元素，如果撒手不管可能会造成内存泄漏，那就需要在`componentWillUnmount`中把这些创造的DOM元素清理掉。
