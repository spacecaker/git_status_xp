.class public Lcom/iLoong/launcher/Widget3D/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iLoong/launcher/UI3DEngine/adapter/IRefreshRender;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public RefreshRender()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    :cond_0
    return-void
.end method

.method public setContinuousRendering(Z)V
    .locals 0

    return-void
.end method
