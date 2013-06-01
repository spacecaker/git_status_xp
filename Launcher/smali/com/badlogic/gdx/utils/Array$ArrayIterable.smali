.class public Lcom/badlogic/gdx/utils/Array$ArrayIterable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private iterator:Lcom/badlogic/gdx/utils/Array$ArrayIterator;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator:Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    return-object v0
.end method
