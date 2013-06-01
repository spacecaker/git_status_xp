.class Lcom/iLoong/launcher/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/c/e;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/c/d;->a:Lcom/iLoong/launcher/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "WallpaperShakeListener"

    const-string v1, "playsound onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
