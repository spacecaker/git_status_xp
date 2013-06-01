.class public Lcom/iLoong/launcher/UI3DEngine/adapter/CooGdx;
.super Ljava/lang/Object;


# instance fields
.field public app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

.field public audio:Lcom/badlogic/gdx/Audio;

.field public files:Lcom/badlogic/gdx/Files;

.field public gdx:Lcom/badlogic/gdx/Gdx;

.field public gl:Lcom/badlogic/gdx/graphics/GLCommon;

.field public gl10:Lcom/badlogic/gdx/graphics/GL10;

.field public gl11:Lcom/badlogic/gdx/graphics/GL11;

.field public gl20:Lcom/badlogic/gdx/graphics/GL20;

.field public glu:Lcom/badlogic/gdx/graphics/GLU;

.field public graphics:Lcom/badlogic/gdx/Graphics;

.field public input:Lcom/badlogic/gdx/Input;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iLoong/launcher/UI3DEngine/adapter/CooGdx;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/adapter/CooGdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/adapter/CooGdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/adapter/CooGdx;->input:Lcom/badlogic/gdx/Input;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/adapter/CooGdx;->files:Lcom/badlogic/gdx/Files;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/adapter/CooGdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/adapter/CooGdx;->gl10:Lcom/badlogic/gdx/graphics/GL10;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/adapter/CooGdx;->gl11:Lcom/badlogic/gdx/graphics/GL11;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/adapter/CooGdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->glu:Lcom/badlogic/gdx/graphics/GLU;

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/adapter/CooGdx;->glu:Lcom/badlogic/gdx/graphics/GLU;

    return-void
.end method
