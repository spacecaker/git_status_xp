.class public Lcom/badlogic/gdx/scenes/scene2d/ui/utils/AndroidClipboard;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;


# instance fields
.field private contents:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/AndroidClipboard;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public setContents(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/AndroidClipboard;->contents:Ljava/lang/String;

    return-void
.end method
