.class abstract Laurelienribon/tweenengine/Pool;
.super Ljava/lang/Object;


# instance fields
.field private final callback:Laurelienribon/tweenengine/Pool$Callback;

.field private final objects:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ILaurelienribon/tweenengine/Pool$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laurelienribon/tweenengine/Pool;->objects:Ljava/util/ArrayList;

    iput-object p2, p0, Laurelienribon/tweenengine/Pool;->callback:Laurelienribon/tweenengine/Pool$Callback;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Laurelienribon/tweenengine/Pool;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected abstract create()Ljava/lang/Object;
.end method

.method public ensureCapacity(I)V
    .locals 1

    iget-object v0, p0, Laurelienribon/tweenengine/Pool;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    return-void
.end method

.method public free(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Laurelienribon/tweenengine/Pool;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Laurelienribon/tweenengine/Pool;->callback:Laurelienribon/tweenengine/Pool$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laurelienribon/tweenengine/Pool;->callback:Laurelienribon/tweenengine/Pool$Callback;

    invoke-interface {v0, p1}, Laurelienribon/tweenengine/Pool$Callback;->onPool(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Pool;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Laurelienribon/tweenengine/Pool;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/Pool;->create()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Pool;->objects:Ljava/util/ArrayList;

    iget-object v1, p0, Laurelienribon/tweenengine/Pool;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Laurelienribon/tweenengine/Pool;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
