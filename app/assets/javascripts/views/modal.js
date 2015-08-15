Wandergram.Views.Modal = Backbone.CompositeView.extend({
  template: JST['modal'],

  events: {
    'click .m-background': 'remove',
    'click .close': 'removeBtn'
  },

  initialize: function(){
    $(document).on('keyup', this.handleKey.bind(this));
    var subview = new Wandergram.Views.PostIndexItem(
      {model: this.model}
    );
    this.addSubview('.m-content', subview);
  },

  render: function(){
    this.$el.html(this.template());
    this.attachSubviews();
    return this;
  },

  handleKey: function (e) {
    if (e.keyCode === 27) {
      this.remove();
    }
  },

  removeBtn: function(e){
    e.preventDefault();
    this.remove();
  },
});
