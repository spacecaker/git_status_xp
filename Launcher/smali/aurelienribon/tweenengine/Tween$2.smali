.class Laurelienribon/tweenengine/Tween$2;
.super Laurelienribon/tweenengine/Pool;


# direct methods
.method constructor <init>(ILaurelienribon/tweenengine/Pool$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Laurelienribon/tweenengine/Pool;-><init>(ILaurelienribon/tweenengine/Pool$Callback;)V

    return-void
.end method


# virtual methods
.method protected create()Laurelienribon/tweenengine/Tween;
    .locals 2

    new-instance v0, Laurelienribon/tweenengine/Tween;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laurelienribon/tweenengine/Tween;-><init>(Laurelienribon/tweenengine/Tween;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween$2;->create()Laurelienribon/tweenengine/Tween;

    move-result-object v0

    return-object v0
.end method
