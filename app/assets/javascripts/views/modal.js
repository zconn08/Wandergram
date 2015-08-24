Wandergram.Views.Modal = Backbone.CompositeView.extend({
  template: JST['modal'],

  events: {
    'click .m-background': 'remove',
  },

  initialize: function(options){
    $(document).on('keyup', this.handleKey.bind(this));
    var subview = new Wandergram.Views.PostIndexItem(
      {model: this.model}
    );
    this.marker = options.marker

    this.addSubview('.m-content', subview);
    window.scrollTo(0,0);
  },

  render: function(){
    this.$el.html(this.template());
    this.attachSubviews();
    return this;
  },

  handleKey: function (e) {
    if (e.keyCode === 27) {
      this.marker.setAnimation(null);
      this.remove();
    }
  },

  remove: function(){
    Backbone.View.prototype.remove.call(this);
    this.eachSubview(function (subview) {
      subview.remove();
    });
    this.marker.setAnimation(null);
  }
});
