.class Lcom/iLoong/launcher/Desktop3D/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/Desktop3D/e;

.field private final synthetic b:Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/Desktop3D/e;Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/Desktop3D/bk;->a:Lcom/iLoong/launcher/Desktop3D/e;

    iput-object p2, p0, Lcom/iLoong/launcher/Desktop3D/bk;->b:Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/iLoong/launcher/Desktop3D/bk;->b:Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    const/4 v1, 0x1

    sget-object v2, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v3, 0x3ecccccd

    iget-object v4, p0, Lcom/iLoong/launcher/Desktop3D/bk;->a:Lcom/iLoong/launcher/Desktop3D/e;

    invoke-static {v4}, Lcom/iLoong/launcher/Desktop3D/e;->d(Lcom/iLoong/launcher/Desktop3D/e;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/iLoong/launcher/Desktop3D/bk;->b:Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;

    iget v6, v6, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->height:F

    const v7, 0x3f99999a

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/iLoong/launcher/Widget3D/WidgetPluginView3D;->startTween(ILaurelienribon/tweenengine/TweenEquation;FFFF)Laurelienribon/tweenengine/Tween;

    return-void
.end method
