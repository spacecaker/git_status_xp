.class public Lcom/badlogic/gdx/assets/loaders/resolvers/ExternalFileHandleResolver;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    return-object v0
.end method
