.class public abstract Lcom/badlogic/gdx/scenes/scene2d/CompositeAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;


# instance fields
.field protected final actions:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/CompositeAction;->actions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/CompositeAction;->actions:Ljava/util/ArrayList;

    return-object v0
.end method
