.class Laurelienribon/tweenengine/Timeline$1;
.super Ljava/lang/Object;

# interfaces
.implements Laurelienribon/tweenengine/Pool$Callback;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPool(Laurelienribon/tweenengine/Timeline;)V
    .locals 0

    invoke-virtual {p1}, Laurelienribon/tweenengine/Timeline;->reset()V

    return-void
.end method

.method public bridge synthetic onPool(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Timeline$1;->onPool(Laurelienribon/tweenengine/Timeline;)V

    return-void
.end method
