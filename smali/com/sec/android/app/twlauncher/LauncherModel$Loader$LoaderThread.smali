.class Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;
.super Ljava/lang/Thread;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherModel$Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsLaunching:Z

.field private mStopped:Z

.field private mWaitThread:Ljava/lang/Thread;

.field final synthetic this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader;Landroid/content/Context;Ljava/lang/Thread;Z)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "waitThread"
    .parameter "isLaunching"

    .prologue
    .line 704
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 705
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    .line 706
    iput-object p3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    .line 707
    iput-boolean p4, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    .line 708
    return-void
.end method

.method private bindWorkspace()V
    .locals 11

    .prologue
    .line 1353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1357
    .local v6, t:J
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    .line 1358
    .local v4, oldCallbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    if-nez v4, :cond_0

    .line 1360
    const-string v9, "Launcher.Model"

    const-string v10, "LoaderThread running with no launcher"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :goto_0
    return-void

    .line 1366
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$3;

    invoke-direct {v10, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$3;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1376
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1377
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 1378
    move v5, v3

    .line 1379
    .local v5, start:I
    add-int/lit8 v9, v3, 0x6

    if-gt v9, v0, :cond_1

    const/4 v9, 0x6

    move v1, v9

    .line 1380
    .local v1, chunkSize:I
    :goto_2
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$4;

    invoke-direct {v10, p0, v4, v5, v1}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$4;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;II)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1377
    add-int/lit8 v3, v3, 0x6

    goto :goto_1

    .line 1379
    .end local v1           #chunkSize:I
    :cond_1
    sub-int v9, v0, v3

    move v1, v9

    goto :goto_2

    .line 1389
    .end local v5           #start:I
    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$5;

    invoke-direct {v10, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$5;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1398
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$6;

    invoke-direct {v10, p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$6;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1406
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$7;

    invoke-direct {v10, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$7;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1419
    invoke-interface {v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v2

    .line 1420
    .local v2, currentScreen:I
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1422
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_4

    .line 1423
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 1424
    .local v8, widget:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    iget v9, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-ne v9, v2, :cond_3

    .line 1425
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$8;

    invoke-direct {v10, p0, v4, v8}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$8;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1422
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1436
    .end local v8           #widget:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_6

    .line 1437
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 1438
    .restart local v8       #widget:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    iget v9, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-eq v9, v2, :cond_5

    .line 1439
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$9;

    invoke-direct {v10, p0, v4, v8}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$9;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1436
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1451
    .end local v8           #widget:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_6
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$10;

    invoke-direct {v10, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$10;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1461
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1463
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_8

    .line 1464
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 1465
    .local v8, widget:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    iget v9, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-ne v9, v2, :cond_7

    .line 1466
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$11;

    invoke-direct {v10, p0, v4, v8}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$11;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1463
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1477
    .end local v8           #widget:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_8
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_a

    .line 1478
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 1479
    .restart local v8       #widget:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    iget v9, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-eq v9, v2, :cond_9

    .line 1480
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$12;

    invoke-direct {v10, p0, v4, v8}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$12;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1477
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1492
    .end local v8           #widget:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_a
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$13;

    invoke-direct {v10, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$13;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1502
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$14;

    invoke-direct {v10, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$14;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1513
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$15;

    invoke-direct {v10, p0, v6, v7}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$15;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;J)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private checkItemPlacement([[[Lcom/sec/android/app/twlauncher/ItemInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)Z
    .locals 7
    .parameter "occupied"
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 907
    iget-wide v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v2, v6

    .line 929
    :goto_0
    return v2

    .line 911
    :cond_0
    iget v0, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .local v0, x:I
    :goto_1
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_3

    .line 912
    iget v1, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .local v1, y:I
    :goto_2
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 913
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    aget-object v2, p1, v2

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 920
    const/4 v2, 0x0

    goto :goto_0

    .line 912
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 911
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 924
    .end local v1           #y:I
    :cond_3
    iget v0, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    :goto_3
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_5

    .line 925
    iget v1, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .restart local v1       #y:I
    :goto_4
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_4

    .line 926
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    aget-object v2, p1, v2

    aget-object v2, v2, v0

    aput-object p2, v2, v1

    .line 925
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 924
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v1           #y:I
    :cond_5
    move v2, v6

    .line 929
    goto :goto_0
.end method

.method private loadAllAppsByBatch()V
    .locals 35

    .prologue
    .line 1574
    .line 1576
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    .line 1583
    if-nez v6, :cond_0

    .line 1585
    const-string v5, "Launcher.Model"

    const-string v6, "LoaderThread running with no launcher (loadAllAppsByBatch)"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :goto_0
    return-void

    .line 1589
    :cond_0
    new-instance v10, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v11, 0x0

    invoke-direct {v10, v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1590
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1593
    const/4 v7, 0x0

    .line 1594
    const/4 v12, 0x0

    .line 1595
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1597
    const v14, 0x7fffffff

    .line 1600
    const/4 v15, 0x0

    .line 1601
    const/16 v16, -0x1

    move/from16 v33, v16

    move-object/from16 v16, v7

    move/from16 v7, v33

    move-object/from16 v34, v12

    move v12, v15

    move-object/from16 v15, v34

    .line 1602
    :goto_1
    if-ge v12, v14, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1300(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    .line 1604
    if-nez v12, :cond_10

    .line 1609
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v7, v0

    iget-object v7, v7, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AllAppsList;->clear()V

    .line 1612
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 1613
    const/4 v7, 0x0

    invoke-virtual {v11, v10, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 1615
    const-string v16, "Launcher.Model"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "queryIntentActivities took "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    sub-long v14, v19, v14

    move-object/from16 v0, v18

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    if-nez v7, :cond_1

    .line 1619
    monitor-exit v17

    goto/16 :goto_0

    .line 1755
    :catchall_0
    move-exception v5

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1622
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v14, v0

    iget-object v14, v14, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->filterOutExcludedApps(Ljava/util/List;)Ljava/util/List;
    invoke-static {v14, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1400(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 1624
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    .line 1626
    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "queryIntentActivities got "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " apps"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    if-nez v14, :cond_2

    .line 1630
    monitor-exit v17

    goto/16 :goto_0

    .line 1633
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v15, v0

    iget-object v15, v15, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/16 v16, 0x0

    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mBeforeFirstQuery:Z
    invoke-static/range {v15 .. v16}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1502(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v15, v0

    iget-object v15, v15, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mBatchSize:I
    invoke-static {v15}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1600(Lcom/sec/android/app/twlauncher/LauncherModel;)I

    move-result v15

    if-nez v15, :cond_3

    move v15, v14

    .line 1648
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v16

    move-object/from16 v18, v7

    move/from16 v33, v14

    move v14, v15

    move/from16 v15, v33

    .line 1653
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .line 1656
    const/4 v7, 0x0

    move/from16 v21, v7

    move/from16 v22, v12

    :goto_4
    move/from16 v0, v22

    move v1, v15

    if-ge v0, v1, :cond_4

    move/from16 v0, v21

    move v1, v14

    if-ge v0, v1, :cond_4

    .line 1674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v7, v0

    iget-object v7, v7, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v23

    new-instance v24, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1700(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/IconCache;

    move-result-object v25

    move-object/from16 v0, v24

    move-object v1, v7

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/IconCache;)V

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/twlauncher/AllAppsList;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 1675
    add-int/lit8 v7, v22, 0x1

    .line 1656
    add-int/lit8 v21, v21, 0x1

    move/from16 v22, v7

    goto :goto_4

    .line 1638
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v15, v0

    iget-object v15, v15, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mBatchSize:I
    invoke-static {v15}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1600(Lcom/sec/android/app/twlauncher/LauncherModel;)I

    move-result v15

    goto :goto_2

    .line 1678
    :cond_4
    if-eqz v16, :cond_8

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1680
    :cond_5
    const/4 v7, 0x0

    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 1681
    const/4 v7, 0x1

    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 1682
    const/16 v21, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1683
    const/16 v25, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1684
    const/16 v26, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/twlauncher/AllAppsList;->size()I

    move-result v27

    .line 1687
    const/16 v28, 0x0

    .line 1688
    const/16 v29, 0x0

    :goto_5
    move/from16 v0, v29

    move/from16 v1, v27

    if-ge v0, v1, :cond_11

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v30, v0

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AllAppsList;->get(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v30

    .line 1690
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v31, v0

    if-eqz v31, :cond_9

    .line 1691
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v31

    .line 1692
    move-object v0, v7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 1693
    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 1694
    move/from16 v0, v25

    move-object/from16 v1, v30

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 1695
    move/from16 v0, v26

    move-object/from16 v1, v30

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 1696
    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 1697
    move/from16 v0, v25

    move-object/from16 v1, v30

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1698
    move/from16 v0, v26

    move-object/from16 v1, v30

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1699
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    .line 1702
    if-eqz v5, :cond_6

    if-eqz v31, :cond_6

    invoke-virtual/range {v31 .. v31}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual/range {v31 .. v31}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v21, "com.google.android.gm"

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "de"

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v21

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1707
    const-string v7, "Launcher.Model"

    const-string v21, "MainMenu Change Gmail title to Google Mail"

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    const-string v7, "Google Mail"

    move-object v0, v7

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 1715
    :cond_6
    const/4 v7, 0x1

    .line 1721
    :goto_6
    if-nez v7, :cond_7

    .line 1722
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1724
    :cond_7
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1727
    :cond_8
    move/from16 v0, v22

    move v1, v14

    if-gt v0, v1, :cond_a

    const/4 v7, 0x1

    .line 1728
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v21, v0

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v23

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v23

    new-instance v24, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;ZLjava/util/ArrayList;)V

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1752
    const-string v7, "Launcher.Model"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "batch of "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-int v12, v22, v12

    move-object/from16 v0, v21

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v21, " icons processed in "

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    sub-long v19, v23, v19

    move-object v0, v12

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v19, "ms"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v7, v0

    iget-object v7, v7, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoadDelay:I
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1900(Lcom/sec/android/app/twlauncher/LauncherModel;)I

    move-result v7

    if-lez v7, :cond_f

    move/from16 v0, v22

    move v1, v15

    if-ge v0, v1, :cond_f

    .line 1760
    :try_start_2
    const-string v7, "Launcher.Model"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "sleeping for "

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v17, v0

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoadDelay:I
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1900(Lcom/sec/android/app/twlauncher/LauncherModel;)I

    move-result v17

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v17, "ms"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v7, v0

    iget-object v7, v7, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoadDelay:I
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1900(Lcom/sec/android/app/twlauncher/LauncherModel;)I

    move-result v7

    move v0, v7

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move v7, v14

    move/from16 v12, v22

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    .line 1763
    goto/16 :goto_1

    .line 1688
    :cond_9
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_5

    .line 1727
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 1763
    :catch_0
    move-exception v7

    move v7, v14

    move/from16 v12, v22

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    goto/16 :goto_1

    .line 1767
    :cond_b
    if-eqz v15, :cond_c

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1769
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    move v5, v0

    if-nez v5, :cond_d

    .line 1770
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-static {v7, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeAppToDatabase(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    .line 1776
    :cond_d
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cached all "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " apps in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v7, v10, v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v7, v0

    iget-object v7, v7, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoadDelay:I
    invoke-static {v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1900(Lcom/sec/android/app/twlauncher/LauncherModel;)I

    move-result v7

    if-lez v7, :cond_e

    const-string v7, " (including delay)"

    :goto_9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    const-string v7, ""

    goto :goto_9

    :cond_f
    move v7, v14

    move/from16 v12, v22

    move v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    goto/16 :goto_1

    :cond_10
    move-object/from16 v18, v16

    move-object/from16 v16, v15

    move v15, v14

    move v14, v7

    goto/16 :goto_3

    :cond_11
    move/from16 v7, v28

    goto/16 :goto_6
.end method

.method private loadAndBindAllApps()V
    .locals 4

    .prologue
    .line 1528
    monitor-enter p0

    .line 1529
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1100(Lcom/sec/android/app/twlauncher/LauncherModel;)Z

    move-result v0

    .line 1530
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1102(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 1531
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1533
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAndBindAllApps loaded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    if-nez v0, :cond_1

    .line 1535
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadAllAppsByBatch()V

    .line 1536
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-eqz v0, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1102(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 1543
    :cond_0
    :goto_0
    return-void

    .line 1531
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1541
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->onlyBindAllApps()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 4

    .prologue
    .line 743
    monitor-enter p0

    .line 744
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$300(Lcom/sec/android/app/twlauncher/LauncherModel;)Z

    move-result v0

    .line 745
    .local v0, loaded:Z
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$302(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 746
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAndBindWorkspace loaded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    if-nez v0, :cond_0

    .line 753
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadWorkspace()V

    .line 754
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-eqz v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$302(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 762
    :goto_0
    return-void

    .line 746
    .end local v0           #loaded:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 761
    .restart local v0       #loaded:Z
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->bindWorkspace()V

    goto :goto_0
.end method

.method private loadWorkspace()V
    .locals 78

    .prologue
    .line 933
    const-wide/16 v69, 0x0

    .line 935
    .local v69, t:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v69

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 938
    .local v17, context:Landroid/content/Context;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 939
    .local v5, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 940
    .local v14, manager:Landroid/content/pm/PackageManager;
    invoke-static/range {v17 .. v17}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v75

    .line 941
    .local v75, widgets:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v14}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v52

    .line 942
    .local v52, isSafeMode:Z
    new-instance v43, Ljava/util/HashMap;

    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    .line 943
    .local v43, hostViews:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Landroid/appwidget/AppWidgetHostView;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v6, v0

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Landroid/telephony/TelephonyManager;

    .line 944
    .local v71, teleManager:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .local v45, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 946
    .local v29, appInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    move v6, v0

    const/4 v7, -0x1

    if-le v6, v7, :cond_0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object v6, v0

    if-eqz v6, :cond_0

    .line 947
    move-object/from16 v0, v29

    iget v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object v7, v0

    move-object/from16 v0, v43

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    goto :goto_0

    .line 950
    .end local v29           #appInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v45

    :goto_1
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 952
    .local v64, sappInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, v64

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    .line 953
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, v64

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    goto :goto_1

    .line 955
    .end local v64           #sappInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 958
    new-instance v55, Ljava/util/ArrayList;

    invoke-direct/range {v55 .. v55}, Ljava/util/ArrayList;-><init>()V

    .line 960
    .local v55, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v6, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 963
    .local v10, c:Landroid/database/Cursor;
    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    sget v7, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    sget v8, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    filled-new-array {v6, v7, v8}, [I

    move-result-object v6

    const-class v7, Lcom/sec/android/app/twlauncher/ItemInfo;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, [[[Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 966
    .local v58, occupied:[[[Lcom/sec/android/app/twlauncher/ItemInfo;
    :try_start_0
    const-string v6, "_id"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 967
    .local v48, idIndex:I
    const-string v6, "intent"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v51

    .line 969
    .local v51, intentIndex:I
    const-string v6, "title"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 971
    .local v12, titleIndex:I
    const-string v6, "iconType"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 973
    .local v18, iconTypeIndex:I
    const-string v6, "icon"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 974
    .local v11, iconIndex:I
    const-string v6, "iconPackage"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 976
    .local v19, iconPackageIndex:I
    const-string v6, "iconResource"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 978
    .local v20, iconResourceIndex:I
    const-string v6, "container"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 980
    .local v38, containerIndex:I
    const-string v6, "itemType"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v54

    .line 982
    .local v54, itemTypeIndex:I
    const-string v6, "appWidgetId"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 984
    .local v31, appWidgetIdIndex:I
    const-string v6, "screen"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v66

    .line 986
    .local v66, screenIndex:I
    const-string v6, "cellX"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 988
    .local v33, cellXIndex:I
    const-string v6, "cellY"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 990
    .local v34, cellYIndex:I
    const-string v6, "spanX"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v67

    .line 992
    .local v67, spanXIndex:I
    const-string v6, "spanY"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v68

    .line 994
    .local v68, spanYIndex:I
    const-string v6, "uri"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v74

    .line 995
    .local v74, uriIndex:I
    const-string v6, "displayMode"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 1005
    .local v40, displayModeIndex:I
    const/16 v36, 0x0

    .line 1007
    .local v36, compName:Landroid/content/ComponentName;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    move v6, v0

    if-nez v6, :cond_14

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_14

    .line 1009
    :try_start_1
    move-object v0, v10

    move/from16 v1, v54

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v53

    .line 1011
    .local v53, itemType:I
    packed-switch v53, :pswitch_data_0

    goto :goto_2

    .line 1014
    :pswitch_0
    move-object v0, v10

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v50

    .line 1016
    .local v50, intentDescription:Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_2
    move-object/from16 v0, v50

    move v1, v6

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 1021
    .local v8, intent:Landroid/content/Intent;
    if-nez v53, :cond_7

    .line 1022
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v7, v14

    move-object/from16 v9, v17

    invoke-virtual/range {v6 .. v12}, Lcom/sec/android/app/twlauncher/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v49

    .line 1030
    .local v49, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    :goto_3
    if-eqz v49, :cond_c

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v0, v6

    move-object/from16 v1, v17

    move-object/from16 v2, v49

    move-object v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ShortcutInfo;Landroid/database/Cursor;I)V

    .line 1051
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v36

    .line 1052
    if-eqz v71, :cond_4

    if-eqz v36, :cond_4

    invoke-virtual/range {v36 .. v36}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual/range {v36 .. v36}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.google.android.gm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "de"

    invoke-virtual/range {v71 .. v71}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1057
    const-string v6, "Launcher.Model"

    const-string v7, "Workspace Change Gmail title to Google Mail"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const-string v6, "Google Mail"

    move-object v0, v6

    move-object/from16 v1, v49

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1061
    :cond_4
    move-object v0, v8

    move-object/from16 v1, v49

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1062
    move-object v0, v10

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-wide v0, v6

    move-object/from16 v2, v49

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1063
    move-object v0, v10

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 1064
    .local v37, container:I
    move/from16 v0, v37

    int-to-long v0, v0

    move-wide v6, v0

    move-wide v0, v6

    move-object/from16 v2, v49

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1065
    move-object v0, v10

    move/from16 v1, v66

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v49

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1066
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v49

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1067
    move-object v0, v10

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v49

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1070
    const/4 v6, 0x0

    invoke-virtual {v14, v8, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v61

    .line 1071
    .local v61, resolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v27, "com.android.stk"

    .line 1072
    .local v27, STKPackageName:Ljava/lang/String;
    const/16 v28, 0x0

    .line 1074
    .local v28, STKRemoveInfo:Z
    const-string v6, "phone"

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/telephony/TelephonyManager;

    .line 1076
    .local v72, tm:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.android.stk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1077
    const-string v6, "gsm.SKT_SETUP_MENU"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 1078
    const-string v6, "Launcher.Model"

    const-string v7, "SIM enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_5
    :goto_4
    move-object/from16 v0, v49

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    move v6, v0

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    .line 1096
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->checkItemPlacement([[[Lcom/sec/android/app/twlauncher/ItemInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1101
    :cond_6
    packed-switch v37, :pswitch_data_1

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide v7, v0

    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-static {v6, v7, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$800(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v42

    .line 1109
    .local v42, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    move-object/from16 v0, v42

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 1298
    .end local v8           #intent:Landroid/content/Intent;
    .end local v27           #STKPackageName:Ljava/lang/String;
    .end local v28           #STKRemoveInfo:Z
    .end local v37           #container:I
    .end local v42           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v49           #info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .end local v50           #intentDescription:Ljava/lang/String;
    .end local v53           #itemType:I
    .end local v61           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v72           #tm:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v6

    move-object/from16 v41, v6

    .line 1299
    .local v41, e:Ljava/lang/Exception;
    :try_start_4
    const-string v6, "Launcher.Model"

    const-string v7, "Desktop items loading interrupted:"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 1303
    .end local v11           #iconIndex:I
    .end local v12           #titleIndex:I
    .end local v18           #iconTypeIndex:I
    .end local v19           #iconPackageIndex:I
    .end local v20           #iconResourceIndex:I
    .end local v31           #appWidgetIdIndex:I
    .end local v33           #cellXIndex:I
    .end local v34           #cellYIndex:I
    .end local v36           #compName:Landroid/content/ComponentName;
    .end local v38           #containerIndex:I
    .end local v40           #displayModeIndex:I
    .end local v41           #e:Ljava/lang/Exception;
    .end local v48           #idIndex:I
    .end local v51           #intentIndex:I
    .end local v54           #itemTypeIndex:I
    .end local v66           #screenIndex:I
    .end local v67           #spanXIndex:I
    .end local v68           #spanYIndex:I
    .end local v74           #uriIndex:I
    :catchall_0
    move-exception v6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v6

    .line 1017
    .restart local v11       #iconIndex:I
    .restart local v12       #titleIndex:I
    .restart local v18       #iconTypeIndex:I
    .restart local v19       #iconPackageIndex:I
    .restart local v20       #iconResourceIndex:I
    .restart local v31       #appWidgetIdIndex:I
    .restart local v33       #cellXIndex:I
    .restart local v34       #cellYIndex:I
    .restart local v36       #compName:Landroid/content/ComponentName;
    .restart local v38       #containerIndex:I
    .restart local v40       #displayModeIndex:I
    .restart local v48       #idIndex:I
    .restart local v50       #intentDescription:Ljava/lang/String;
    .restart local v51       #intentIndex:I
    .restart local v53       #itemType:I
    .restart local v54       #itemTypeIndex:I
    .restart local v66       #screenIndex:I
    .restart local v67       #spanXIndex:I
    .restart local v68       #spanYIndex:I
    .restart local v74       #uriIndex:I
    :catch_1
    move-exception v41

    .local v41, e:Ljava/net/URISyntaxException;
    goto/16 :goto_2

    .line 1025
    .end local v41           #e:Ljava/net/URISyntaxException;
    .restart local v8       #intent:Landroid/content/Intent;
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v13, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v15, v8

    move-object/from16 v16, v10

    move/from16 v21, v11

    move/from16 v22, v12

    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/sec/android/app/twlauncher/ShortcutInfo;
    invoke-static/range {v13 .. v22}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$700(Lcom/sec/android/app/twlauncher/LauncherModel;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v49

    .restart local v49       #info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    goto/16 :goto_3

    .line 1080
    .restart local v27       #STKPackageName:Ljava/lang/String;
    .restart local v28       #STKRemoveInfo:Z
    .restart local v37       #container:I
    .restart local v61       #resolveInfo:Landroid/content/pm/ResolveInfo;
    .restart local v72       #tm:Landroid/telephony/TelephonyManager;
    :cond_8
    invoke-virtual/range {v72 .. v72}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    const/16 v28, 0x1

    .line 1084
    :goto_5
    if-eqz v28, :cond_b

    .line 1086
    move-object/from16 v0, v49

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move-wide v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v55

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1081
    :cond_9
    invoke-virtual/range {v72 .. v72}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_a

    const-string v6, "Launcher.Model"

    const-string v7, "SIM Exists"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1082
    :cond_a
    const/16 v28, 0x1

    goto :goto_5

    .line 1089
    :cond_b
    const/16 v28, 0x1

    goto/16 :goto_4

    .line 1103
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1117
    .end local v27           #STKPackageName:Ljava/lang/String;
    .end local v28           #STKRemoveInfo:Z
    .end local v37           #container:I
    .end local v61           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v72           #tm:Landroid/telephony/TelephonyManager;
    :cond_c
    move-object v0, v10

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 1118
    .local v46, id:J
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading shortcut "

    .end local v8           #intent:Landroid/content/Intent;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", removing it"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const/4 v6, 0x0

    move-wide/from16 v0, v46

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1125
    .end local v46           #id:J
    .end local v49           #info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .end local v50           #intentDescription:Ljava/lang/String;
    :pswitch_2
    move-object v0, v10

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 1126
    .restart local v46       #id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move-object v0, v6

    move-wide/from16 v1, v46

    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$800(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v42

    .line 1128
    .restart local v42       #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v42

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1130
    move-wide/from16 v0, v46

    move-object/from16 v2, v42

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1131
    move-object v0, v10

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 1132
    .restart local v37       #container:I
    move/from16 v0, v37

    int-to-long v0, v0

    move-wide v6, v0

    move-wide v0, v6

    move-object/from16 v2, v42

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1133
    move-object v0, v10

    move/from16 v1, v66

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v42

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1134
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v42

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1135
    move-object v0, v10

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v42

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1138
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->checkItemPlacement([[[Lcom/sec/android/app/twlauncher/ItemInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1142
    packed-switch v37, :pswitch_data_2

    .line 1148
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move-object/from16 v0, v42

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1144
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1152
    .end local v37           #container:I
    .end local v42           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v46           #id:J
    :pswitch_4
    move-object v0, v10

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 1153
    .restart local v46       #id:J
    move-object v0, v10

    move/from16 v1, v74

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v73

    .line 1156
    .local v73, uri:Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual/range {v73 .. v73}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v60

    .line 1160
    .local v60, providerInfo:Landroid/content/pm/ProviderInfo;
    if-nez v60, :cond_d

    if-nez v52, :cond_d

    .line 1161
    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v55

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1163
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move-object v0, v6

    move-wide/from16 v1, v46

    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$900(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-result-object v26

    .line 1165
    .local v26, liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    move-object v0, v10

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v50

    .line 1166
    .restart local v50       #intentDescription:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1167
    .restart local v8       #intent:Landroid/content/Intent;
    if-eqz v50, :cond_e

    .line 1169
    const/4 v6, 0x0

    :try_start_6
    move-object/from16 v0, v50

    move v1, v6

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v8

    .line 1175
    :cond_e
    :goto_7
    :try_start_7
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1176
    move-wide/from16 v0, v46

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1177
    move-object/from16 v0, v73

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 1178
    move-object v0, v10

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 1179
    .restart local v37       #container:I
    move/from16 v0, v37

    int-to-long v0, v0

    move-wide v6, v0

    move-wide v0, v6

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1180
    move-object v0, v10

    move/from16 v1, v66

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v26

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1181
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v26

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1182
    move-object v0, v10

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v26

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1183
    move-object v0, v8

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 1184
    move-object v0, v10

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v26

    iput v0, v1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->displayMode:I

    .line 1187
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->checkItemPlacement([[[Lcom/sec/android/app/twlauncher/ItemInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v21, v17

    move-object/from16 v22, v10

    move/from16 v23, v18

    move/from16 v24, v19

    move/from16 v25, v20

    .line 1191
    #calls: Lcom/sec/android/app/twlauncher/LauncherModel;->loadLiveFolderIcon(Landroid/content/Context;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V
    invoke-static/range {v21 .. v26}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1000(Landroid/content/Context;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V

    .line 1194
    packed-switch v37, :pswitch_data_3

    .line 1199
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1196
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1205
    .end local v8           #intent:Landroid/content/Intent;
    .end local v26           #liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .end local v37           #container:I
    .end local v46           #id:J
    .end local v50           #intentDescription:Ljava/lang/String;
    .end local v60           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v73           #uri:Landroid/net/Uri;
    :pswitch_6
    move-object v0, v10

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1206
    .local v30, appWidgetId:I
    move-object v0, v10

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v46, v0

    .line 1208
    .restart local v46       #id:J
    move-object/from16 v0, v75

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v59

    .line 1211
    .local v59, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v52, :cond_10

    if-eqz v59, :cond_f

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object v6, v0

    if-eqz v6, :cond_f

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_10

    .line 1213
    :cond_f
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " appWidgetId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v55

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1217
    :cond_10
    new-instance v32, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;-><init>(I)V

    .line 1218
    .local v32, appWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    move-wide/from16 v0, v46

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1219
    move-object v0, v10

    move/from16 v1, v66

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v32

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1220
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v32

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1221
    move-object v0, v10

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v32

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1222
    move-object v0, v10

    move/from16 v1, v67

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v32

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 1223
    move-object v0, v10

    move/from16 v1, v68

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v32

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 1225
    move-object v0, v10

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 1226
    .restart local v37       #container:I
    const/16 v6, -0x64

    move/from16 v0, v37

    move v1, v6

    if-eq v0, v1, :cond_11

    .line 1227
    const-string v6, "Launcher.Model"

    const-string v7, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1231
    :cond_11
    move-object v0, v10

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    move-wide v0, v6

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1234
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->checkItemPlacement([[[Lcom/sec/android/app/twlauncher/ItemInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1243
    .end local v30           #appWidgetId:I
    .end local v32           #appWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    .end local v37           #container:I
    .end local v46           #id:J
    .end local v59           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    :pswitch_7
    move-object v0, v10

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 1245
    .restart local v46       #id:J
    new-instance v65, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-direct/range {v65 .. v65}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;-><init>()V

    .line 1246
    .local v65, sappWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    move-wide/from16 v0, v46

    move-object/from16 v2, v65

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1247
    move-object v0, v10

    move/from16 v1, v66

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v65

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1248
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v65

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1249
    move-object v0, v10

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v65

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1250
    move-object v0, v10

    move/from16 v1, v67

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v65

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 1251
    move-object v0, v10

    move/from16 v1, v68

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v65

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 1252
    move-object v0, v10

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v65

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    .line 1254
    move-object v0, v10

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 1255
    .restart local v37       #container:I
    const/16 v6, -0x64

    move/from16 v0, v37

    move v1, v6

    if-eq v0, v1, :cond_12

    .line 1256
    const-string v6, "Launcher.Model"

    const-string v7, "SamsungWidget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1260
    :cond_12
    move/from16 v0, v37

    int-to-long v0, v0

    move-wide v6, v0

    move-wide v0, v6

    move-object/from16 v2, v65

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1262
    move-object v0, v10

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v50

    .line 1263
    .restart local v50       #intentDescription:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1265
    .restart local v8       #intent:Landroid/content/Intent;
    const/4 v6, 0x0

    :try_start_8
    move-object/from16 v0, v50

    move v1, v6

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v8

    .line 1269
    :try_start_9
    move-object v0, v8

    move-object/from16 v1, v65

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    .line 1272
    const/4 v6, 0x0

    invoke-virtual {v14, v8, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v62

    .line 1273
    .local v62, ri:Landroid/content/pm/ResolveInfo;
    if-nez v62, :cond_13

    .line 1274
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t resolve SamsungWidget\'s activity. Deleting it. id:"

    .end local v8           #intent:Landroid/content/Intent;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v55

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    .line 1266
    .end local v62           #ri:Landroid/content/pm/ResolveInfo;
    .restart local v8       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v41

    .restart local v41       #e:Ljava/net/URISyntaxException;
    goto/16 :goto_2

    .line 1279
    .end local v41           #e:Ljava/net/URISyntaxException;
    .restart local v62       #ri:Landroid/content/pm/ResolveInfo;
    :cond_13
    :try_start_a
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v14, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 1286
    :try_start_b
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, v65

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 1289
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v65

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->checkItemPlacement([[[Lcom/sec/android/app/twlauncher/ItemInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1280
    :catch_3
    move-exception v6

    move-object/from16 v41, v6

    .line 1281
    .local v41, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SamsungWidget\'s apk has move to sdcard and unmounted. Deleting it. id:"

    .end local v8           #intent:Landroid/content/Intent;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v55

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_2

    .line 1303
    .end local v37           #container:I
    .end local v41           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v46           #id:J
    .end local v50           #intentDescription:Ljava/lang/String;
    .end local v53           #itemType:I
    .end local v62           #ri:Landroid/content/pm/ResolveInfo;
    .end local v65           #sappWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_14
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1306
    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_15

    .line 1307
    sget-object v6, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v35

    .line 1310
    .local v35, client:Landroid/content/ContentProviderClient;
    const/16 v44, 0x0

    .local v44, i:I
    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->size()I

    move-result v39

    .end local v5           #contentResolver:Landroid/content/ContentResolver;
    .local v39, count:I
    :goto_9
    move/from16 v0, v44

    move/from16 v1, v39

    if-ge v0, v1, :cond_15

    .line 1311
    move-object/from16 v0, v55

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v46

    .line 1313
    .restart local v46       #id:J
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const/4 v6, 0x0

    :try_start_c
    move-wide/from16 v0, v46

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v35

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_4

    .line 1310
    :goto_a
    add-int/lit8 v44, v44, 0x1

    goto :goto_9

    .line 1319
    :catch_4
    move-exception v6

    move-object/from16 v41, v6

    .line 1320
    .local v41, e:Landroid/os/RemoteException;
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not remove id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1325
    .end local v35           #client:Landroid/content/ContentProviderClient;
    .end local v39           #count:I
    .end local v41           #e:Landroid/os/RemoteException;
    .end local v44           #i:I
    .end local v46           #id:J
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .end local p0
    :cond_16
    :goto_b
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 1326
    .local v57, loadInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    move-object/from16 v0, v57

    iget v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    move v6, v0

    const/4 v7, -0x1

    if-le v6, v7, :cond_16

    .line 1327
    move-object/from16 v0, v57

    iget v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v43

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    goto :goto_b

    .line 1329
    .end local v57           #loadInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_17
    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->clear()V

    .line 1332
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loaded workspace in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v69

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    const-string v6, "Launcher.Model"

    const-string v7, "workspace layout: "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    const/16 v77, 0x0

    .local v77, y:I
    :goto_c
    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    move/from16 v0, v77

    move v1, v6

    if-ge v0, v1, :cond_1c

    .line 1335
    const-string v56, ""

    .line 1336
    .local v56, line:Ljava/lang/String;
    const/16 v63, 0x0

    .local v63, s:I
    :goto_d
    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    move/from16 v0, v63

    move v1, v6

    if-ge v0, v1, :cond_1b

    .line 1337
    if-lez v63, :cond_18

    .line 1338
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    .line 1340
    :cond_18
    const/16 v76, 0x0

    .local v76, x:I
    :goto_e
    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    move/from16 v0, v76

    move v1, v6

    if-ge v0, v1, :cond_1a

    .line 1341
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v58, v63

    aget-object v7, v7, v76

    aget-object v7, v7, v77

    if-eqz v7, :cond_19

    const-string v7, "#"

    :goto_f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    .line 1340
    add-int/lit8 v76, v76, 0x1

    goto :goto_e

    .line 1341
    :cond_19
    const-string v7, "."

    goto :goto_f

    .line 1336
    :cond_1a
    add-int/lit8 v63, v63, 0x1

    goto :goto_d

    .line 1344
    .end local v76           #x:I
    :cond_1b
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    add-int/lit8 v77, v77, 0x1

    goto :goto_c

    .line 1170
    .end local v56           #line:Ljava/lang/String;
    .end local v63           #s:I
    .end local v77           #y:I
    .restart local v5       #contentResolver:Landroid/content/ContentResolver;
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v26       #liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .restart local v46       #id:J
    .restart local v50       #intentDescription:Ljava/lang/String;
    .restart local v53       #itemType:I
    .restart local v60       #providerInfo:Landroid/content/pm/ProviderInfo;
    .restart local v73       #uri:Landroid/net/Uri;
    .restart local p0
    :catch_5
    move-exception v6

    goto/16 :goto_7

    .line 1347
    .end local v5           #contentResolver:Landroid/content/ContentResolver;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v26           #liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .end local v46           #id:J
    .end local v50           #intentDescription:Ljava/lang/String;
    .end local v53           #itemType:I
    .end local v60           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v73           #uri:Landroid/net/Uri;
    .end local p0
    .restart local v77       #y:I
    :cond_1c
    return-void

    .line 1011
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1101
    :pswitch_data_1
    .packed-switch -0x64
        :pswitch_1
    .end packed-switch

    .line 1142
    :pswitch_data_2
    .packed-switch -0x64
        :pswitch_3
    .end packed-switch

    .line 1194
    :pswitch_data_3
    .packed-switch -0x64
        :pswitch_5
    .end packed-switch
.end method

.method private onlyBindAllApps()V
    .locals 4

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    .line 1548
    if-nez v0, :cond_0

    .line 1550
    const-string v0, "Launcher.Model"

    const-string v1, "LoaderThread running with no launcher (onlyBindAllApps)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :goto_0
    return-void

    .line 1555
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1557
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$16;

    invoke-direct {v3, p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$16;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private waitForOtherThread()V
    .locals 2

    .prologue
    .line 722
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, done:Z
    :goto_0
    if-nez v0, :cond_0

    .line 726
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    const/4 v0, 0x1

    goto :goto_0

    .line 732
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    .line 734
    .end local v0           #done:Z
    :cond_1
    return-void

    .line 728
    .restart local v0       #done:Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method isLaunching()Z
    .locals 1

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v4, "Launcher.Model"

    .line 802
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->waitForOtherThread()V

    .line 807
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    .line 808
    .local v0, cbk:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;->isAllAppsVisible()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v3

    .line 812
    .local v1, loadWorkspaceFirst:Z
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 813
    :try_start_0
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    if-eqz v3, :cond_3

    move v3, v5

    :goto_1
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 815
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    if-eqz v1, :cond_4

    .line 822
    const-string v2, "Launcher.Model"

    const-string v2, "step 1: loading workspace"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadAndBindWorkspace()V

    .line 830
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 831
    :try_start_1
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    if-eqz v3, :cond_0

    .line 832
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 834
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 837
    if-eqz v1, :cond_5

    .line 838
    const-string v2, "Launcher.Model"

    const-string v2, "step 2: loading all apps"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadAndBindAllApps()V

    .line 847
    :goto_3
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    .line 849
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 852
    :try_start_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    const/4 v4, 0x0

    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mLoaderThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;
    invoke-static {v3, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->access$602(Lcom/sec/android/app/twlauncher/LauncherModel$Loader;Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;)Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    .line 853
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 861
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$2;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 866
    return-void

    .end local v1           #loadWorkspaceFirst:Z
    :cond_1
    move v1, v5

    .line 808
    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    .restart local v1       #loadWorkspaceFirst:Z
    :cond_3
    move v3, v6

    .line 813
    goto :goto_1

    .line 815
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 825
    :cond_4
    const-string v2, "Launcher.Model"

    const-string v2, "step 1: special: loading all apps"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadAndBindAllApps()V

    goto :goto_2

    .line 834
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 841
    :cond_5
    const-string v2, "Launcher.Model"

    const-string v2, "step 2: special: loading workspace"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadAndBindWorkspace()V

    goto :goto_3

    .line 853
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 869
    monitor-enter p0

    .line 870
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    .line 871
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 872
    monitor-exit p0

    .line 873
    return-void

    .line 872
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    .locals 5
    .parameter "oldCallbacks"

    .prologue
    const/4 v4, 0x0

    .line 883
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 884
    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-eqz v2, :cond_0

    .line 885
    monitor-exit v1

    move-object v1, v4

    .line 901
    :goto_0
    return-object v1

    .line 888
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_1

    .line 889
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 892
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    .line 893
    .local v0, callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 894
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 896
    :cond_2
    if-nez v0, :cond_3

    .line 897
    const-string v2, "Launcher.Model"

    const-string v3, "no mCallbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 901
    :cond_3
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .line 902
    .end local v0           #callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
