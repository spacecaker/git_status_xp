.class public final Laurelienribon/tweenengine/Timeline;
.super Laurelienribon/tweenengine/BaseTween;


# static fields
.field private static synthetic $SWITCH_TABLE$aurelienribon$tweenengine$Timeline$Modes:[I

.field static final pool:Laurelienribon/tweenengine/Pool;

.field private static final poolCallback:Laurelienribon/tweenengine/Pool$Callback;


# instance fields
.field private final children:Ljava/util/List;

.field private current:Laurelienribon/tweenengine/Timeline;

.field private isBuilt:Z

.field private mode:Laurelienribon/tweenengine/Timeline$Modes;

.field private parent:Laurelienribon/tweenengine/Timeline;


# direct methods
.method static synthetic $SWITCH_TABLE$aurelienribon$tweenengine$Timeline$Modes()[I
    .locals 3

    sget-object v0, Laurelienribon/tweenengine/Timeline;->$SWITCH_TABLE$aurelienribon$tweenengine$Timeline$Modes:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Laurelienribon/tweenengine/Timeline$Modes;->values()[Laurelienribon/tweenengine/Timeline$Modes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Laurelienribon/tweenengine/Timeline$Modes;->PARALLEL:Laurelienribon/tweenengine/Timeline$Modes;

    invoke-virtual {v1}, Laurelienribon/tweenengine/Timeline$Modes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Laurelienribon/tweenengine/Timeline$Modes;->SEQUENCE:Laurelienribon/tweenengine/Timeline$Modes;

    invoke-virtual {v1}, Laurelienribon/tweenengine/Timeline$Modes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Laurelienribon/tweenengine/Timeline;->$SWITCH_TABLE$aurelienribon$tweenengine$Timeline$Modes:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Laurelienribon/tweenengine/Timeline$1;

    invoke-direct {v0}, Laurelienribon/tweenengine/Timeline$1;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/Timeline;->poolCallback:Laurelienribon/tweenengine/Pool$Callback;

    new-instance v0, Laurelienribon/tweenengine/Timeline$2;

    const/16 v1, 0xa

    sget-object v2, Laurelienribon/tweenengine/Timeline;->poolCallback:Laurelienribon/tweenengine/Pool$Callback;

    invoke-direct {v0, v1, v2}, Laurelienribon/tweenengine/Timeline$2;-><init>(ILaurelienribon/tweenengine/Pool$Callback;)V

    sput-object v0, Laurelienribon/tweenengine/Timeline;->pool:Laurelienribon/tweenengine/Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Laurelienribon/tweenengine/BaseTween;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-virtual {p0}, Laurelienribon/tweenengine/Timeline;->reset()V

    return-void
.end method

.method synthetic constructor <init>(Laurelienribon/tweenengine/Timeline;)V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/Timeline;-><init>()V

    return-void
.end method

.method public static createParallel()Laurelienribon/tweenengine/Timeline;
    .locals 2

    sget-object v0, Laurelienribon/tweenengine/Timeline;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    sget-object v1, Laurelienribon/tweenengine/Timeline$Modes;->PARALLEL:Laurelienribon/tweenengine/Timeline$Modes;

    invoke-direct {v0, v1}, Laurelienribon/tweenengine/Timeline;->setup(Laurelienribon/tweenengine/Timeline$Modes;)V

    return-object v0
.end method

.method public static createSequence()Laurelienribon/tweenengine/Timeline;
    .locals 2

    sget-object v0, Laurelienribon/tweenengine/Timeline;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    sget-object v1, Laurelienribon/tweenengine/Timeline$Modes;->SEQUENCE:Laurelienribon/tweenengine/Timeline$Modes;

    invoke-direct {v0, v1}, Laurelienribon/tweenengine/Timeline;->setup(Laurelienribon/tweenengine/Timeline$Modes;)V

    return-object v0
.end method

.method public static ensurePoolCapacity(I)V
    .locals 1

    sget-object v0, Laurelienribon/tweenengine/Timeline;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Pool;->ensureCapacity(I)V

    return-void
.end method

.method public static getPoolSize()I
    .locals 1

    sget-object v0, Laurelienribon/tweenengine/Timeline;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Pool;->size()I

    move-result v0

    return v0
.end method

.method private setup(Laurelienribon/tweenengine/Timeline$Modes;)V
    .locals 0

    iput-object p1, p0, Laurelienribon/tweenengine/Timeline;->mode:Laurelienribon/tweenengine/Timeline$Modes;

    iput-object p0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    return-void
.end method


# virtual methods
.method public beginParallel()Laurelienribon/tweenengine/Timeline;
    .locals 2

    iget-boolean v0, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t push anything to a timeline once it is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Laurelienribon/tweenengine/Timeline;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iput-object v1, v0, Laurelienribon/tweenengine/Timeline;->parent:Laurelienribon/tweenengine/Timeline;

    sget-object v1, Laurelienribon/tweenengine/Timeline$Modes;->PARALLEL:Laurelienribon/tweenengine/Timeline$Modes;

    iput-object v1, v0, Laurelienribon/tweenengine/Timeline;->mode:Laurelienribon/tweenengine/Timeline$Modes;

    iget-object v1, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iget-object v1, v1, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    return-object p0
.end method

.method public beginSequence()Laurelienribon/tweenengine/Timeline;
    .locals 2

    iget-boolean v0, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t push anything to a timeline once it is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Laurelienribon/tweenengine/Timeline;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    iget-object v1, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iput-object v1, v0, Laurelienribon/tweenengine/Timeline;->parent:Laurelienribon/tweenengine/Timeline;

    sget-object v1, Laurelienribon/tweenengine/Timeline$Modes;->SEQUENCE:Laurelienribon/tweenengine/Timeline$Modes;

    iput-object v1, v0, Laurelienribon/tweenengine/Timeline;->mode:Laurelienribon/tweenengine/Timeline$Modes;

    iget-object v1, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iget-object v1, v1, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    return-object p0
.end method

.method public build()Laurelienribon/tweenengine/Timeline;
    .locals 5

    iget-boolean v0, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Laurelienribon/tweenengine/Timeline;->duration:F

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/BaseTween;->getRepeatCount()I

    move-result v2

    if-gez v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t push an object with infinite repetitions in a timeline"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Laurelienribon/tweenengine/BaseTween;->build()Ljava/lang/Object;

    invoke-static {}, Laurelienribon/tweenengine/Timeline;->$SWITCH_TABLE$aurelienribon$tweenengine$Timeline$Modes()[I

    move-result-object v2

    iget-object v3, p0, Laurelienribon/tweenengine/Timeline;->mode:Laurelienribon/tweenengine/Timeline$Modes;

    invoke-virtual {v3}, Laurelienribon/tweenengine/Timeline$Modes;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_0
    iget v2, p0, Laurelienribon/tweenengine/Timeline;->duration:F

    iget v3, p0, Laurelienribon/tweenengine/Timeline;->duration:F

    invoke-virtual {v0}, Laurelienribon/tweenengine/BaseTween;->getFullDuration()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Laurelienribon/tweenengine/Timeline;->duration:F

    iget v3, v0, Laurelienribon/tweenengine/BaseTween;->delay:F

    add-float/2addr v2, v3

    iput v2, v0, Laurelienribon/tweenengine/BaseTween;->delay:F

    goto :goto_2

    :pswitch_1
    iget v2, p0, Laurelienribon/tweenengine/Timeline;->duration:F

    invoke-virtual {v0}, Laurelienribon/tweenengine/BaseTween;->getFullDuration()F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laurelienribon/tweenengine/Timeline;->duration:F

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Laurelienribon/tweenengine/Timeline;->build()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    return-object v0
.end method

.method protected computeOverride(IIF)V
    .locals 4

    if-le p1, p2, :cond_2

    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Timeline;->forceStartValues(I)V

    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Timeline;->isYoyo(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Laurelienribon/tweenengine/Timeline;->currentTime:F

    neg-float v0, v0

    :goto_0
    move v2, v0

    :goto_1
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_7

    const/4 v0, 0x0

    iget-object v1, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_2
    if-lt v1, v3, :cond_6

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Laurelienribon/tweenengine/Timeline;->currentTime:F

    goto :goto_0

    :cond_2
    if-ge p1, p2, :cond_4

    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Timeline;->forceEndValues(I)V

    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Timeline;->isYoyo(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Laurelienribon/tweenengine/Timeline;->duration:F

    iget v1, p0, Laurelienribon/tweenengine/Timeline;->currentTime:F

    sub-float/2addr v0, v1

    :goto_3
    move v2, v0

    goto :goto_1

    :cond_3
    iget v0, p0, Laurelienribon/tweenengine/Timeline;->currentTime:F

    iget v1, p0, Laurelienribon/tweenengine/Timeline;->duration:F

    sub-float/2addr v0, v1

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Timeline;->isYoyo(I)Z

    move-result v0

    if-eqz v0, :cond_5

    neg-float v0, p3

    :goto_4
    move v2, v0

    goto :goto_1

    :cond_5
    move v0, p3

    goto :goto_4

    :cond_6
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/BaseTween;->update(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_5
    if-ltz v1, :cond_0

    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/BaseTween;->update(F)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_5
.end method

.method protected containsTarget(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0, p1}, Laurelienribon/tweenengine/BaseTween;->containsTarget(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method protected containsTarget(Ljava/lang/Object;I)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0, p1, p2}, Laurelienribon/tweenengine/BaseTween;->containsTarget(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public end()Laurelienribon/tweenengine/Timeline;
    .locals 2

    iget-boolean v0, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t push anything to a timeline once it is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    if-ne v0, p0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Nothing to end..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iget-object v0, v0, Laurelienribon/tweenengine/Timeline;->parent:Laurelienribon/tweenengine/Timeline;

    iput-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    return-object p0
.end method

.method protected forceEndValues()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    iget v3, p0, Laurelienribon/tweenengine/Timeline;->duration:F

    invoke-virtual {v0, v3}, Laurelienribon/tweenengine/BaseTween;->forceToEnd(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected forceStartValues()V
    .locals 2

    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/BaseTween;->forceToStart()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public free()V
    .locals 2

    iget-boolean v0, p0, Laurelienribon/tweenengine/Timeline;->isFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laurelienribon/tweenengine/Timeline;->isKilled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/Timeline;->callCallback(I)V

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    sget-object v0, Laurelienribon/tweenengine/Timeline;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Pool;->free(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/BaseTween;->free()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1

    iget-boolean v0, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iget-object v0, v0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iget-object v0, v0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 0

    return-void
.end method

.method protected killTarget(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Timeline;->containsTarget(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/Timeline;->kill()V

    :cond_0
    return-void
.end method

.method protected killTarget(Ljava/lang/Object;I)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Laurelienribon/tweenengine/Timeline;->containsTarget(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/Timeline;->kill()V

    :cond_0
    return-void
.end method

.method public push(Laurelienribon/tweenengine/Timeline;)Laurelienribon/tweenengine/Timeline;
    .locals 2

    iget-boolean v0, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t push anything to a timeline once it is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You forgot to call a few \'end()\' statements in your pushed timeline"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iput-object v0, p1, Laurelienribon/tweenengine/Timeline;->parent:Laurelienribon/tweenengine/Timeline;

    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iget-object v0, v0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;
    .locals 2

    iget-boolean v0, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t push anything to a timeline once it is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iget-object v0, v0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public pushPause(F)Laurelienribon/tweenengine/Timeline;
    .locals 2

    iget-boolean v0, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t push anything to a timeline once it is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    iget-object v1, v0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-static {}, Laurelienribon/tweenengine/Tween;->mark()Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, p1}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected reset()V
    .locals 1

    invoke-super {p0}, Laurelienribon/tweenengine/BaseTween;->reset()V

    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Laurelienribon/tweenengine/Timeline;->parent:Laurelienribon/tweenengine/Timeline;

    iput-object v0, p0, Laurelienribon/tweenengine/Timeline;->current:Laurelienribon/tweenengine/Timeline;

    const/4 v0, 0x0

    iput-boolean v0, p0, Laurelienribon/tweenengine/Timeline;->isBuilt:Z

    return-void
.end method

.method public start()Laurelienribon/tweenengine/Timeline;
    .locals 2

    invoke-super {p0}, Laurelienribon/tweenengine/BaseTween;->start()Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Timeline;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/BaseTween;->start()Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic start()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Laurelienribon/tweenengine/Timeline;->start()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    return-object v0
.end method
