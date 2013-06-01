.class Lcom/iLoong/launcher/Desktop3D/bf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/e;

.field private final synthetic b:Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/e;Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/bf;->a:Lcom/iLoong/launcher/Desktop3D/e;

    iput-object p2, p0, Lcom/iLoong/launcher/Desktop3D/bf;->b:Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bf;->b:Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3ecccccd

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/bf;->a:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-static {v4}, Lcom/iLoong/launcher/Desktop3D/e;->e(Lcom/iLoong/launcher/Desktop3D/e;)[F

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/iLoong/launcher/Desktop3D/bf;->a:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-static {v5}, Lcom/iLoong/launcher/Desktop3D/e;->e(Lcom/iLoong/launcher/Desktop3D/e;)[F

    move-result-object v5

    aget v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    return-void
.end method
