.class public final Laurelienribon/tweenengine/Tween;
.super Laurelienribon/tweenengine/BaseTween;


# static fields
.field public static final INFINITY:I = -0x1

.field private static accessorBuffer:[F

.field private static combinedAttrsLimit:I

.field private static pathBuffer:[F

.field private static final pool:Laurelienribon/tweenengine/Pool;

.field private static final poolCallback:Laurelienribon/tweenengine/Pool$Callback;

.field private static final registeredAccessors:Ljava/util/Map;

.field private static waypointsLimit:I


# instance fields
.field private accessor:Laurelienribon/tweenengine/TweenAccessor;

.field private combinedAttrsCnt:I

.field private equation:Laurelienribon/tweenengine/TweenEquation;

.field private isFrom:Z

.field private isRelative:Z

.field private path:Laurelienribon/tweenengine/TweenPath;

.field private final startValues:[F

.field private target:Ljava/lang/Object;

.field private targetClass:Ljava/lang/Class;

.field private final targetValues:[F

.field private type:I

.field private final waypoints:[F

.field private waypointsCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x3

    sput v1, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    const/4 v0, 0x0

    sput v0, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    new-array v0, v1, [F

    sput-object v0, Laurelienribon/tweenengine/Tween;->accessorBuffer:[F

    const/4 v0, 0x6

    new-array v0, v0, [F

    sput-object v0, Laurelienribon/tweenengine/Tween;->pathBuffer:[F

    new-instance v0, Laurelienribon/tweenengine/Tween$1;

    invoke-direct {v0}, Laurelienribon/tweenengine/Tween$1;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/Tween;->poolCallback:Laurelienribon/tweenengine/Pool$Callback;

    new-instance v0, Laurelienribon/tweenengine/Tween$2;

    const/16 v1, 0x14

    sget-object v2, Laurelienribon/tweenengine/Tween;->poolCallback:Laurelienribon/tweenengine/Pool$Callback;

    invoke-direct {v0, v1, v2}, Laurelienribon/tweenengine/Tween$2;-><init>(ILaurelienribon/tweenengine/Pool$Callback;)V

    sput-object v0, Laurelienribon/tweenengine/Tween;->pool:Laurelienribon/tweenengine/Pool;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/Tween;->registeredAccessors:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Laurelienribon/tweenengine/BaseTween;-><init>()V

    sget v0, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    new-array v0, v0, [F

    iput-object v0, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    sget v0, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    new-array v0, v0, [F

    iput-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    sget v0, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    sget v1, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween;->reset()V

    return-void
.end method

.method synthetic constructor <init>(Laurelienribon/tweenengine/Tween;)V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/Tween;-><init>()V

    return-void
.end method

.method public static call(Laurelienribon/tweenengine/TweenCallback;)Laurelienribon/tweenengine/Tween;
    .locals 4

    sget-object v0, Laurelienribon/tweenengine/Tween;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Laurelienribon/tweenengine/Tween;->setup(Ljava/lang/Object;IF)V

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setCallbackTriggers(I)Ljava/lang/Object;

    return-object v0
.end method

.method public static ensurePoolCapacity(I)V
    .locals 1

    sget-object v0, Laurelienribon/tweenengine/Tween;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Pool;->ensureCapacity(I)V

    return-void
.end method

.method private findTargetClass()Ljava/lang/Class;
    .locals 2

    sget-object v0, Laurelienribon/tweenengine/Tween;->registeredAccessors:Ljava/util/Map;

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    instance-of v0, v0, Laurelienribon/tweenengine/TweenAccessor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    sget-object v1, Laurelienribon/tweenengine/Tween;->registeredAccessors:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method

.method public static from(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;
    .locals 2

    sget-object v0, Laurelienribon/tweenengine/Tween;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-direct {v0, p0, p1, p2}, Laurelienribon/tweenengine/Tween;->setup(Ljava/lang/Object;IF)V

    sget-object v1, Laurelienribon/tweenengine/equations/Quad;->INOUT:Laurelienribon/tweenengine/equations/Quad;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    sget-object v1, Laurelienribon/tweenengine/TweenPaths;->catmullRom:Laurelienribon/tweenengine/paths/CatmullRom;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->path(Laurelienribon/tweenengine/TweenPath;)Laurelienribon/tweenengine/Tween;

    const/4 v1, 0x1

    iput-boolean v1, v0, Laurelienribon/tweenengine/Tween;->isFrom:Z

    return-object v0
.end method

.method public static getPoolSize()I
    .locals 1

    sget-object v0, Laurelienribon/tweenengine/Tween;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Pool;->size()I

    move-result v0

    return v0
.end method

.method public static getRegisteredAccessor(Ljava/lang/Class;)Laurelienribon/tweenengine/TweenAccessor;
    .locals 1

    sget-object v0, Laurelienribon/tweenengine/Tween;->registeredAccessors:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/TweenAccessor;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "6.2.0"

    return-object v0
.end method

.method public static mark()Laurelienribon/tweenengine/Tween;
    .locals 4

    sget-object v0, Laurelienribon/tweenengine/Tween;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Laurelienribon/tweenengine/Tween;->setup(Ljava/lang/Object;IF)V

    return-object v0
.end method

.method public static registerAccessor(Ljava/lang/Class;Laurelienribon/tweenengine/TweenAccessor;)V
    .locals 1

    sget-object v0, Laurelienribon/tweenengine/Tween;->registeredAccessors:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static set(Ljava/lang/Object;I)Laurelienribon/tweenengine/Tween;
    .locals 2

    sget-object v0, Laurelienribon/tweenengine/Tween;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Laurelienribon/tweenengine/Tween;->setup(Ljava/lang/Object;IF)V

    return-object v0
.end method

.method public static setCombinedAttributesLimit(I)V
    .locals 2

    sput p0, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    sget v0, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    new-array v0, v0, [F

    sput-object v0, Laurelienribon/tweenengine/Tween;->accessorBuffer:[F

    sget v0, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    add-int/lit8 v0, v0, 0x2

    sget v1, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    sput-object v0, Laurelienribon/tweenengine/Tween;->pathBuffer:[F

    return-void
.end method

.method public static setWaypointsLimit(I)V
    .locals 2

    sput p0, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    sget v0, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    add-int/lit8 v0, v0, 0x2

    sget v1, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    sput-object v0, Laurelienribon/tweenengine/Tween;->pathBuffer:[F

    return-void
.end method

.method private setup(Ljava/lang/Object;IF)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Duration can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Laurelienribon/tweenengine/Tween;->findTargetClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Laurelienribon/tweenengine/Tween;->targetClass:Ljava/lang/Class;

    iput p2, p0, Laurelienribon/tweenengine/Tween;->type:I

    iput p3, p0, Laurelienribon/tweenengine/Tween;->duration:F

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private throwCombinedAttrsLimitReached()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "You cannot combine more than "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "attributes in a tween. You can raise this limit with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Tween.setCombinedAttributesLimit(), which should be called once "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "in application initialization code."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private throwWaypointsLimitReached()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "You cannot add more than "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "waypoints to a tween. You can raise this limit with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Tween.setWaypointsLimit(), which should be called once in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "application initialization code."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;
    .locals 2

    sget-object v0, Laurelienribon/tweenengine/Tween;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Pool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    invoke-direct {v0, p0, p1, p2}, Laurelienribon/tweenengine/Tween;->setup(Ljava/lang/Object;IF)V

    sget-object v1, Laurelienribon/tweenengine/equations/Quad;->INOUT:Laurelienribon/tweenengine/equations/Quad;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    sget-object v1, Laurelienribon/tweenengine/TweenPaths;->catmullRom:Laurelienribon/tweenengine/paths/CatmullRom;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->path(Laurelienribon/tweenengine/TweenPath;)Laurelienribon/tweenengine/Tween;

    return-object v0
.end method


# virtual methods
.method public build()Laurelienribon/tweenengine/Tween;
    .locals 4

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    sget-object v0, Laurelienribon/tweenengine/Tween;->registeredAccessors:Ljava/util/Map;

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->targetClass:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/TweenAccessor;

    iput-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    if-nez v0, :cond_2

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    instance-of v0, v0, Laurelienribon/tweenengine/TweenAccessor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    check-cast v0, Laurelienribon/tweenengine/TweenAccessor;

    iput-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    :cond_2
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    iget v2, p0, Laurelienribon/tweenengine/Tween;->type:I

    sget-object v3, Laurelienribon/tweenengine/Tween;->accessorBuffer:[F

    invoke-interface {v0, v1, v2, v3}, Laurelienribon/tweenengine/TweenAccessor;->getValues(Ljava/lang/Object;I[F)I

    move-result v0

    iput v0, p0, Laurelienribon/tweenengine/Tween;->combinedAttrsCnt:I

    iget v0, p0, Laurelienribon/tweenengine/Tween;->combinedAttrsCnt:I

    sget v1, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Laurelienribon/tweenengine/Tween;->throwCombinedAttrsLimitReached()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No TweenAccessor was found for the target"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween;->build()Laurelienribon/tweenengine/Tween;

    move-result-object v0

    return-object v0
.end method

.method public cast(Ljava/lang/Class;)Laurelienribon/tweenengine/Tween;
    .locals 2

    iget-boolean v0, p0, Laurelienribon/tweenengine/Tween;->isStarted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t cast the target of a tween once it is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Laurelienribon/tweenengine/Tween;->targetClass:Ljava/lang/Class;

    return-object p0
.end method

.method protected computeOverride(IIF)V
    .locals 8

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->equation:Laurelienribon/tweenengine/TweenEquation;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Laurelienribon/tweenengine/Tween;->duration:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_2

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    iget v2, p0, Laurelienribon/tweenengine/Tween;->type:I

    iget-object v3, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    invoke-interface {v0, v1, v2, v3}, Laurelienribon/tweenengine/TweenAccessor;->setValues(Ljava/lang/Object;I[F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Tween;->isYoyo(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Laurelienribon/tweenengine/Tween;->duration:F

    iget v2, p0, Laurelienribon/tweenengine/Tween;->currentTime:F

    sub-float/2addr v0, v2

    :goto_1
    iget-object v2, p0, Laurelienribon/tweenengine/Tween;->equation:Laurelienribon/tweenengine/TweenEquation;

    const/high16 v3, 0x3f80

    iget v4, p0, Laurelienribon/tweenengine/Tween;->duration:F

    invoke-virtual {v2, v0, v5, v3, v4}, Laurelienribon/tweenengine/TweenEquation;->compute(FFFF)F

    move-result v3

    iget v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->path:Laurelienribon/tweenengine/TweenPath;

    if-nez v0, :cond_7

    :cond_3
    move v0, v1

    :goto_2
    iget v1, p0, Laurelienribon/tweenengine/Tween;->combinedAttrsCnt:I

    if-lt v0, v1, :cond_6

    :cond_4
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    iget v2, p0, Laurelienribon/tweenengine/Tween;->type:I

    sget-object v3, Laurelienribon/tweenengine/Tween;->accessorBuffer:[F

    invoke-interface {v0, v1, v2, v3}, Laurelienribon/tweenengine/TweenAccessor;->setValues(Ljava/lang/Object;I[F)V

    goto :goto_0

    :cond_5
    iget v0, p0, Laurelienribon/tweenengine/Tween;->currentTime:F

    goto :goto_1

    :cond_6
    sget-object v1, Laurelienribon/tweenengine/Tween;->accessorBuffer:[F

    iget-object v2, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v2, v2, v0

    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    aget v4, v4, v0

    iget-object v5, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v5, v5, v0

    sub-float/2addr v4, v5

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v1

    :goto_3
    iget v2, p0, Laurelienribon/tweenengine/Tween;->combinedAttrsCnt:I

    if-ge v0, v2, :cond_4

    sget-object v2, Laurelienribon/tweenengine/Tween;->pathBuffer:[F

    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v4, v4, v0

    aput v4, v2, v1

    sget-object v2, Laurelienribon/tweenengine/Tween;->pathBuffer:[F

    iget v4, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    aget v5, v5, v0

    aput v5, v2, v4

    move v2, v1

    :goto_4
    iget v4, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    if-lt v2, v4, :cond_8

    sget-object v2, Laurelienribon/tweenengine/Tween;->accessorBuffer:[F

    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->path:Laurelienribon/tweenengine/TweenPath;

    sget-object v5, Laurelienribon/tweenengine/Tween;->pathBuffer:[F

    iget v6, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    add-int/lit8 v6, v6, 0x2

    invoke-interface {v4, v3, v5, v6}, Laurelienribon/tweenengine/TweenPath;->compute(F[FI)F

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    sget-object v4, Laurelienribon/tweenengine/Tween;->pathBuffer:[F

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    iget v7, p0, Laurelienribon/tweenengine/Tween;->combinedAttrsCnt:I

    mul-int/2addr v7, v2

    add-int/2addr v7, v0

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method protected containsTarget(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected containsTarget(Ljava/lang/Object;I)Z
    .locals 1

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/Tween;->type:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;
    .locals 0

    iput-object p1, p0, Laurelienribon/tweenengine/Tween;->equation:Laurelienribon/tweenengine/TweenEquation;

    return-object p0
.end method

.method protected forceEndValues()V
    .locals 4

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    iget v2, p0, Laurelienribon/tweenengine/Tween;->type:I

    iget-object v3, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    invoke-interface {v0, v1, v2, v3}, Laurelienribon/tweenengine/TweenAccessor;->setValues(Ljava/lang/Object;I[F)V

    goto :goto_0
.end method

.method protected forceStartValues()V
    .locals 4

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    iget v2, p0, Laurelienribon/tweenengine/Tween;->type:I

    iget-object v3, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    invoke-interface {v0, v1, v2, v3}, Laurelienribon/tweenengine/TweenAccessor;->setValues(Ljava/lang/Object;I[F)V

    goto :goto_0
.end method

.method public free()V
    .locals 1

    iget-boolean v0, p0, Laurelienribon/tweenengine/Tween;->isFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laurelienribon/tweenengine/Tween;->isKilled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/Tween;->callCallback(I)V

    :cond_0
    sget-object v0, Laurelienribon/tweenengine/Tween;->pool:Laurelienribon/tweenengine/Pool;

    invoke-virtual {v0, p0}, Laurelienribon/tweenengine/Pool;->free(Ljava/lang/Object;)V

    return-void
.end method

.method public getAccessor()Laurelienribon/tweenengine/TweenAccessor;
    .locals 1

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    return-object v0
.end method

.method public getCombinedAttributesCount()I
    .locals 1

    iget v0, p0, Laurelienribon/tweenengine/Tween;->combinedAttrsCnt:I

    return v0
.end method

.method public getEasing()Laurelienribon/tweenengine/TweenEquation;
    .locals 1

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->equation:Laurelienribon/tweenengine/TweenEquation;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    return-object v0
.end method

.method public getTargetClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getTargetValues()[F
    .locals 1

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Laurelienribon/tweenengine/Tween;->type:I

    return v0
.end method

.method protected initializeOverride()V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    iget-object v2, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    iget v4, p0, Laurelienribon/tweenengine/Tween;->type:I

    iget-object v5, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    invoke-interface {v0, v2, v4, v5}, Laurelienribon/tweenengine/TweenAccessor;->getValues(Ljava/lang/Object;I[F)I

    move v0, v1

    :goto_0
    iget v2, p0, Laurelienribon/tweenengine/Tween;->combinedAttrsCnt:I

    if-ge v0, v2, :cond_0

    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    aget v5, v4, v0

    iget-boolean v2, p0, Laurelienribon/tweenengine/Tween;->isRelative:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v2, v2, v0

    :goto_1
    add-float/2addr v2, v5

    aput v2, v4, v0

    move v2, v1

    :goto_2
    iget v4, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    if-lt v2, v4, :cond_4

    iget-boolean v2, p0, Laurelienribon/tweenengine/Tween;->isFrom:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v2, v2, v0

    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    iget-object v5, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    aget v5, v5, v0

    aput v5, v4, v0

    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    aput v2, v4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    iget-object v5, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    iget v4, p0, Laurelienribon/tweenengine/Tween;->combinedAttrsCnt:I

    mul-int/2addr v4, v2

    add-int v6, v4, v0

    aget v7, v5, v6

    iget-boolean v4, p0, Laurelienribon/tweenengine/Tween;->isRelative:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v4, v4, v0

    :goto_3
    add-float/2addr v4, v7

    aput v4, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v4, v3

    goto :goto_3
.end method

.method protected killTarget(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween;->kill()V

    :cond_0
    return-void
.end method

.method protected killTarget(Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/Tween;->type:I

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween;->kill()V

    :cond_0
    return-void
.end method

.method public path(Laurelienribon/tweenengine/TweenPath;)Laurelienribon/tweenengine/Tween;
    .locals 0

    iput-object p1, p0, Laurelienribon/tweenengine/Tween;->path:Laurelienribon/tweenengine/TweenPath;

    return-object p0
.end method

.method protected reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Laurelienribon/tweenengine/BaseTween;->reset()V

    iput-object v1, p0, Laurelienribon/tweenengine/Tween;->target:Ljava/lang/Object;

    iput-object v1, p0, Laurelienribon/tweenengine/Tween;->targetClass:Ljava/lang/Class;

    iput-object v1, p0, Laurelienribon/tweenengine/Tween;->accessor:Laurelienribon/tweenengine/TweenAccessor;

    const/4 v0, -0x1

    iput v0, p0, Laurelienribon/tweenengine/Tween;->type:I

    iput-object v1, p0, Laurelienribon/tweenengine/Tween;->equation:Laurelienribon/tweenengine/TweenEquation;

    iput-object v1, p0, Laurelienribon/tweenengine/Tween;->path:Laurelienribon/tweenengine/TweenPath;

    iput-boolean v2, p0, Laurelienribon/tweenengine/Tween;->isRelative:Z

    iput-boolean v2, p0, Laurelienribon/tweenengine/Tween;->isFrom:Z

    iput v2, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    iput v2, p0, Laurelienribon/tweenengine/Tween;->combinedAttrsCnt:I

    return-void
.end method

.method public target(F)Laurelienribon/tweenengine/Tween;
    .locals 2

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object p0
.end method

.method public target(FF)Laurelienribon/tweenengine/Tween;
    .locals 2

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    return-object p0
.end method

.method public target(FFF)Laurelienribon/tweenengine/Tween;
    .locals 2

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    return-object p0
.end method

.method public varargs target([F)Laurelienribon/tweenengine/Tween;
    .locals 3

    const/4 v2, 0x0

    array-length v0, p1

    sget v1, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Laurelienribon/tweenengine/Tween;->throwCombinedAttrsLimitReached()V

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public targetRelative(F)Laurelienribon/tweenengine/Tween;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/Tween;->isRelative:Z

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    iget-boolean v1, p0, Laurelienribon/tweenengine/Tween;->isInitialized:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v1, v1, v2

    add-float/2addr p1, v1

    :cond_0
    aput p1, v0, v2

    return-object p0
.end method

.method public targetRelative(FF)Laurelienribon/tweenengine/Tween;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Laurelienribon/tweenengine/Tween;->isRelative:Z

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    iget-boolean v1, p0, Laurelienribon/tweenengine/Tween;->isInitialized:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v1, v1, v3

    add-float/2addr p1, v1

    :cond_0
    aput p1, v0, v3

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    iget-boolean v1, p0, Laurelienribon/tweenengine/Tween;->isInitialized:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v1, v1, v2

    add-float/2addr p2, v1

    :cond_1
    aput p2, v0, v2

    return-object p0
.end method

.method public targetRelative(FFF)Laurelienribon/tweenengine/Tween;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Laurelienribon/tweenengine/Tween;->isRelative:Z

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    iget-boolean v1, p0, Laurelienribon/tweenengine/Tween;->isInitialized:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v1, v1, v3

    add-float/2addr p1, v1

    :cond_0
    aput p1, v0, v3

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    iget-boolean v1, p0, Laurelienribon/tweenengine/Tween;->isInitialized:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v1, v1, v2

    add-float/2addr p2, v1

    :cond_1
    aput p2, v0, v2

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    iget-boolean v1, p0, Laurelienribon/tweenengine/Tween;->isInitialized:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v1, v1, v4

    add-float/2addr p3, v1

    :cond_2
    aput p3, v0, v4

    return-object p0
.end method

.method public varargs targetRelative([F)Laurelienribon/tweenengine/Tween;
    .locals 4

    array-length v0, p1

    sget v1, Laurelienribon/tweenengine/Tween;->combinedAttrsLimit:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Laurelienribon/tweenengine/Tween;->throwCombinedAttrsLimitReached()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/Tween;->isRelative:Z

    return-object p0

    :cond_1
    iget-object v2, p0, Laurelienribon/tweenengine/Tween;->targetValues:[F

    iget-boolean v1, p0, Laurelienribon/tweenengine/Tween;->isInitialized:Z

    if-eqz v1, :cond_2

    aget v1, p1, v0

    iget-object v3, p0, Laurelienribon/tweenengine/Tween;->startValues:[F

    aget v3, v3, v0

    add-float/2addr v1, v3

    :goto_1
    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget v1, p1, v0

    goto :goto_1
.end method

.method public waypoint(F)Laurelienribon/tweenengine/Tween;
    .locals 2

    iget v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    sget v1, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Laurelienribon/tweenengine/Tween;->throwWaypointsLimitReached()V

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    iget v1, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    aput p1, v0, v1

    iget v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    return-object p0
.end method

.method public waypoint(FF)Laurelienribon/tweenengine/Tween;
    .locals 2

    iget v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    sget v1, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Laurelienribon/tweenengine/Tween;->throwWaypointsLimitReached()V

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    iget v1, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    mul-int/lit8 v1, v1, 0x2

    aput p1, v0, v1

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    iget v1, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    iget v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    return-object p0
.end method

.method public waypoint(FFF)Laurelienribon/tweenengine/Tween;
    .locals 2

    iget v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    sget v1, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Laurelienribon/tweenengine/Tween;->throwWaypointsLimitReached()V

    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    iget v1, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    mul-int/lit8 v1, v1, 0x3

    aput p1, v0, v1

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    iget v1, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    iget v1, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    aput p3, v0, v1

    iget v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    return-object p0
.end method

.method public varargs waypoint([F)Laurelienribon/tweenengine/Tween;
    .locals 4

    iget v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    sget v1, Laurelienribon/tweenengine/Tween;->waypointsLimit:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Laurelienribon/tweenengine/Tween;->throwWaypointsLimitReached()V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Laurelienribon/tweenengine/Tween;->waypoints:[F

    iget v2, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    array-length v3, p1

    mul-int/2addr v2, v3

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laurelienribon/tweenengine/Tween;->waypointsCnt:I

    return-object p0
.end method
