.class Lcom/iLoong/launcher/Desktop3D/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/e;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/e;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/bh;->a:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bh;->a:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/e;->f(Lcom/iLoong/launcher/Desktop3D/e;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v0

    const/4 v1, 0x5

    sget-object v2, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    const v3, 0x3f4ccccd

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/UI3DEngine/View3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/Desktop3D/bh;->a:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/e;->f(Lcom/iLoong/launcher/Desktop3D/e;)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->getParent()Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;

    move-result-object v1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    return-void
.end method
