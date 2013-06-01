.class Laurelienribon/tweenengine/Tween$1;
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
.method public onPool(Laurelienribon/tweenengine/Tween;)V
    .locals 0

    invoke-virtual {p1}, Laurelienribon/tweenengine/Tween;->reset()V

    return-void
.end method

.method public bridge synthetic onPool(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Laurelienribon/tweenengine/Tween;

    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Tween$1;->onPool(Laurelienribon/tweenengine/Tween;)V

    return-void
.end method
