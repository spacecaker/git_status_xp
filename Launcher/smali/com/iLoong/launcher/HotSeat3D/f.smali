.class public Lcom/iLoong/launcher/HotSeat3D/f;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;)V
    .locals 1

    iput-object p1, p0, Lcom/iLoong/launcher/HotSeat3D/f;->a:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "type = ? AND new = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    const-string v5, "date DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/HotSeat3D/f;->a:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, v1, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->c:I

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    :cond_0
    const-string v0, "launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "missedCallCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iLoong/launcher/HotSeat3D/f;->a:Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;

    iget v2, v2, Lcom/iLoong/launcher/HotSeat3D/MissedCallIntent;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
