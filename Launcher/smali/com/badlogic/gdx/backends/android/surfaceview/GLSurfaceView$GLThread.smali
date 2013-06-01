.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;


# instance fields
.field private mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;

.field private mExited:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$Renderer;

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$Renderer;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mWidth:I

    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHeight:I

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRequestRender:Z

    iput v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRenderMode:I

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRenderer:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$Renderer;

    return-void
.end method

.method static synthetic access$0(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mExited:Z

    return-void
.end method

.method private guardedRun()V
    .locals 19

    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EglHelper;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EglHelper;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHaveEglContext:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    move-object v1, v8

    move v3, v9

    move v8, v2

    move v9, v7

    move v7, v13

    move-object v2, v6

    move v6, v12

    move/from16 v17, v11

    move v11, v5

    move/from16 v5, v17

    move/from16 v18, v4

    move v4, v10

    move/from16 v10, v18

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v12, :cond_0

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->stopEglContextLocked()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    move v12, v6

    move v13, v7

    move v7, v9

    move v9, v3

    move v3, v8

    move-object v8, v1

    move/from16 v17, v5

    move v5, v11

    move/from16 v11, v17

    move/from16 v18, v10

    move v10, v4

    move/from16 v4, v18

    :goto_2
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v8, :cond_10

    :try_start_4
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v8, 0x0

    move-object v1, v8

    move v6, v12

    move v8, v3

    move v3, v9

    move v9, v7

    move v7, v13

    move/from16 v17, v10

    move v10, v4

    move/from16 v4, v17

    move/from16 v18, v11

    move v11, v5

    move/from16 v5, v18

    goto :goto_0

    :cond_1
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mPaused:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRequestPaused:Z

    if-eq v12, v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRequestPaused:Z

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mPaused:Z

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v12, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->stopEglContextLocked()V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    const/4 v5, 0x1

    :cond_3
    if-eqz v9, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->stopEglContextLocked()V

    const/4 v9, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v12, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->stopEglContextLocked()V

    :cond_5
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EglHelper;

    invoke-virtual {v12}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EglHelper;->finish()V

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v12, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    :cond_7
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    :cond_9
    if-eqz v6, :cond_a

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRenderComplete:Z

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-nez v12, :cond_b

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v12, :cond_c

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    const/4 v10, 0x1

    const/4 v8, 0x1

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;

    #getter for: Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v12}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$7(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHeight:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;

    const/4 v13, 0x0

    #setter for: Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v12, v13}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$8(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;Z)V

    :goto_4
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    move v12, v6

    move v13, v7

    move v7, v9

    move v9, v3

    move v3, v8

    move-object v8, v1

    move/from16 v17, v5

    move v5, v11

    move/from16 v11, v17

    move/from16 v18, v10

    move v10, v4

    move/from16 v4, v18

    goto/16 :goto_2

    :cond_d
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v12

    if-eqz v12, :cond_b

    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EglHelper;

    invoke-virtual {v11}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EglHelper;->start()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v11, 0x1

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHaveEglContext:Z

    const/4 v11, 0x1

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v1

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->stopEglContextLocked()V

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1

    :catch_0
    move-exception v1

    :try_start_a
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;)V

    throw v1

    :cond_e
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRequestRender:Z

    goto :goto_4

    :cond_f
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    :cond_10
    if-eqz v4, :cond_17

    :try_start_b
    const-string v1, ""

    const-string v6, "GL createSurface"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;

    invoke-virtual {v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    if-nez v1, :cond_11

    :try_start_c
    const-string v2, ""

    const-string v6, "GL gl==null,continue"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v12

    move-object v2, v1

    move-object v1, v8

    move v8, v3

    move v3, v9

    move v9, v7

    move v7, v13

    move/from16 v17, v11

    move v11, v5

    move/from16 v5, v17

    move/from16 v18, v4

    move v4, v10

    move/from16 v10, v18

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1

    const/4 v4, 0x0

    move-object v6, v1

    :goto_5
    if-eqz v5, :cond_12

    :try_start_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRenderer:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$Renderer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EglHelper;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v6, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    const/4 v5, 0x0

    :cond_12
    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRenderer:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$Renderer;

    invoke-interface {v1, v6, v10, v9}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3

    const/4 v2, 0x0

    :goto_6
    :try_start_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRenderer:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$Renderer;

    invoke-interface {v1, v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EglHelper;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EglHelper;->swap()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_4

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x1

    :goto_7
    if-eqz v13, :cond_14

    const/4 v12, 0x1

    move v3, v9

    move v7, v13

    move v9, v1

    move-object v1, v8

    move v8, v2

    move-object v2, v6

    move v6, v12

    move/from16 v17, v10

    move v10, v4

    move/from16 v4, v17

    move/from16 v18, v5

    move v5, v11

    move/from16 v11, v18

    goto/16 :goto_0

    :catch_1
    move-exception v2

    move-object/from16 v17, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v1

    move-object/from16 v1, v17

    :goto_8
    :try_start_f
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v6

    monitor-enter v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    const-string v14, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "mRequestPaused== "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRequestPaused:Z

    if-eqz v14, :cond_13

    monitor-exit v6

    move-object v1, v8

    move v6, v12

    move v8, v2

    move-object v2, v5

    move v5, v11

    move v11, v4

    move v4, v10

    move v10, v3

    move v3, v9

    move v9, v7

    move v7, v13

    goto/16 :goto_0

    :cond_13
    throw v1

    :catchall_3
    move-exception v1

    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :catchall_4
    move-exception v1

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    throw v1

    :catch_2
    move-exception v1

    move/from16 v17, v3

    move v3, v4

    move v4, v5

    move-object v5, v2

    move/from16 v2, v17

    goto :goto_8

    :catch_3
    move-exception v1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto :goto_8

    :catch_4
    move-exception v1

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto :goto_8

    :cond_14
    move v3, v9

    move v7, v13

    move v9, v1

    move-object v1, v8

    move v8, v2

    move-object v2, v6

    move v6, v12

    move/from16 v17, v10

    move v10, v4

    move/from16 v4, v17

    move/from16 v18, v5

    move v5, v11

    move/from16 v11, v18

    goto/16 :goto_0

    :cond_15
    move v1, v7

    goto/16 :goto_7

    :cond_16
    move v2, v3

    goto/16 :goto_6

    :cond_17
    move-object v6, v2

    goto/16 :goto_5
.end method

.method private readyToDraw()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHeight:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EglHelper;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHaveEglContext:Z

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;)V

    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$EglHelper;->destroySurface()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRequestPaused:Z

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRequestPaused:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRequestRender:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRenderComplete:Z

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onWindowResize(II)V
    .locals 3

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mWidth:I

    iput p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHeight:I

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;

    const/4 v2, 0x1

    #setter for: Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v0, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$8(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRequestRender:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRenderComplete:Z

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;

    #getter for: Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;
    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$9(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;

    #getter for: Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->mGLThread:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;
    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$9(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->ableToDraw()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 2

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mShouldExit:Z

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mExited:Z

    if-eqz v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .locals 2

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRequestRender:Z

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLThread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mRenderMode:I

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 2

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHasSurface:Z

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mExited:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public surfaceDestroyed()V
    .locals 2

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mHasSurface:Z

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThread;->mExited:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;->access$6()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
