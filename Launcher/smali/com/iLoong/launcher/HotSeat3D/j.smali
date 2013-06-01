.class public Lcom/iLoong/launcher/HotSeat3D/j;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/HotSeat3D/j;->a:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/iLoong/launcher/HotSeat3D/j;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/j;->a:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    iput v1, v0, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->a:I

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/j;->a:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    iput v1, v0, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->b:I

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/j;->a:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/j;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->a(Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/j;->a:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/j;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->b(Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;Landroid/content/Context;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    :cond_0
    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "newMmsCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/j;->a:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    iget v2, v2, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newSmsCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/j;->a:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    iget v2, v2, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
