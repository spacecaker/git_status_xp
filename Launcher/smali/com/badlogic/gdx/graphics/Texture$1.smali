.class Lcom/badlogic/gdx/graphics/Texture$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;


# instance fields
.field private final synthetic val$refCount:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/Texture$1;->val$refCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishedLoading(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture$1;->val$refCount:I

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setReferenceCount(Ljava/lang/String;I)V

    return-void
.end method
