.class public Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public depth:I

.field public g:I

.field public handleKeyTypedChinese:Z

.field public numSamples:I

.field public r:I

.field public resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

.field public stencil:I

.field public touchSleepTime:I

.field public useAccelerometer:Z

.field public useCompass:Z

.field public useGL20:Z

.field public useWakelock:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGL20:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->handleKeyTypedChinese:Z

    iput v3, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iput v3, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->numSamples:I

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useAccelerometer:Z

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useCompass:Z

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->touchSleepTime:I

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useWakelock:Z

    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    return-void
.end method
