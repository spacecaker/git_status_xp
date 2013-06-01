.class public Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;
.super Lcom/badlogic/gdx/graphics/g3d/Animation;


# instance fields
.field public keyframes:[Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

.field public length:F

.field public name:Ljava/lang/String;

.field public refs:I

.field public sampleRate:F


# direct methods
.method public constructor <init>(Ljava/lang/String;IFF)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/Animation;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->name:Ljava/lang/String;

    new-array v0, p2, [Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->keyframes:[Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->length:F

    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->sampleRate:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->refs:I

    return-void
.end method


# virtual methods
.method public addRef()V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->refs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->refs:I

    return-void
.end method

.method public getLength()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->length:F

    return v0
.end method

.method public getNumFrames()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->keyframes:[Lcom/badlogic/gdx/graphics/g3d/keyframed/Keyframe;

    array-length v0, v0

    return v0
.end method

.method public removeRef()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->refs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/keyframed/KeyframeAnimation;->refs:I

    return v0
.end method
