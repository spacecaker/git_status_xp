.class public Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final DRAW_TWICE_AFTER_SIZE_CHANGED:Z = true

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;

.field private mGLWrapper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLWrapper;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;)V

    sput-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mSizeChanged:Z

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mSizeChanged:Z

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->init()V

    return-void
.end method

.method static synthetic access$0(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$1(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLConfigChooser;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mEGLConfigChooser:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$2(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLContextFactory;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mEGLContextFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$3(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLWindowSurfaceFactory;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$4(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLWrapper;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mGLWrapper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$5(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;)I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$7(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$8(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mSizeChanged:Z

    return-void
.end method

.method static synthetic access$9(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;

    return-object v0
.end method

.method private checkRenderThreadState()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->requestExitAndWait()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->onResume()V

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->requestRender()V

    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mDebugFlags:I

    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8

    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->setEGLConfigChooser(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLConfigChooser(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLConfigChooser;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mEGLConfigChooser:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLConfigChooser;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->setEGLConfigChooser(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->checkRenderThreadState()V

    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mEGLContextClientVersion:I

    return-void
.end method

.method public setEGLContextFactory(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLContextFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mEGLContextFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLContextFactory;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLWindowSurfaceFactory;

    return-void
.end method

.method public setGLWrapper(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mGLWrapper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLWrapper;

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->setRenderMode(I)V

    return-void
.end method

.method public setRenderer(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$Renderer;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->checkRenderThreadState()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mEGLConfigChooser:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mEGLConfigChooser:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLConfigChooser;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mEGLContextFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$DefaultContextFactory;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$DefaultContextFactory;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mEGLContextFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLContextFactory;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$DefaultWindowSurfaceFactory;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EGLWindowSurfaceFactory;

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$Renderer;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->start()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->onWindowResize(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->surfaceCreated()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->surfaceDestroyed()V

    return-void
.end method
