.class public abstract Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultClipboard()Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/AndroidClipboard;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/AndroidClipboard;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "com.badlogic.gdx.scenes.scene2d.ui.utils.DesktopClipboard"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Couldn\'t instantiate desktop clipboard"

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract getContents()Ljava/lang/String;
.end method

.method public abstract setContents(Ljava/lang/String;)V
.end method
