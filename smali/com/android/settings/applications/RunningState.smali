.class public Lcom/android/settings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningState$ServiceProcessComparator;,
        Lcom/android/settings/applications/RunningState$MergedItem;,
        Lcom/android/settings/applications/RunningState$ProcessItem;,
        Lcom/android/settings/applications/RunningState$ServiceItem;,
        Lcom/android/settings/applications/RunningState$BaseItem;,
        Lcom/android/settings/applications/RunningState$OnRefreshUiListener;,
        Lcom/android/settings/applications/RunningState$BackgroundHandler;
    }
.end annotation


# static fields
.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/android/settings/applications/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 102
    iput v2, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Lcom/android/settings/applications/RunningState$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$1;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 551
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 552
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 553
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 554
    iput-boolean v2, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 555
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 556
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 557
    new-instance v0, Lcom/android/settings/applications/RunningState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    .line 558
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;
    .locals 2
    .parameter "context"

    .prologue
    .line 542
    sget-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_0
    sget-object v1, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    if-nez v1, :cond_0

    .line 544
    new-instance v1, Lcom/android/settings/applications/RunningState;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    .line 546
    :cond_0
    sget-object v1, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    monitor-exit v0

    return-object v1

    .line 547
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    const/4 v2, 0x1

    .line 604
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    .line 613
    :goto_0
    return v0

    .line 607
    :cond_0
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v0, :cond_1

    move v0, v2

    .line 611
    goto :goto_0

    .line 613
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "pm"
    .parameter "className"
    .parameter "item"

    .prologue
    .line 525
    if-eqz p2, :cond_2

    iget v2, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 527
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 528
    .local v0, label:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 538
    .end local v0           #label:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-object v0

    .line 533
    :cond_2
    move-object v0, p1

    .line 534
    .local v0, label:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 535
    .local v1, tail:I
    if-ltz v1, :cond_1

    .line 536
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 53
    .parameter "context"
    .parameter "am"

    .prologue
    .line 617
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v39

    .line 619
    .local v39, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v49, v0

    add-int/lit8 v49, v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 621
    const/4 v13, 0x0

    .line 623
    .local v13, changed:Z
    const/16 v49, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v45

    .line 625
    .local v45, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v45, :cond_1

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v49

    move/from16 v8, v49

    .line 626
    .local v8, NS:I
    :goto_0
    const/16 v20, 0x0

    .local v20, i:I
    :goto_1
    move/from16 v0, v20

    move v1, v8

    if-ge v0, v1, :cond_a

    .line 627
    move-object/from16 v0, v45

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 631
    .local v46, si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v46

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v49, v0

    if-nez v49, :cond_2

    move-object/from16 v0, v46

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v49, v0

    if-nez v49, :cond_2

    .line 626
    :cond_0
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 625
    .end local v8           #NS:I
    .end local v20           #i:I
    .end local v46           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/16 v49, 0x0

    move/from16 v8, v49

    goto :goto_0

    .line 636
    .restart local v8       #NS:I
    .restart local v20       #i:I
    .restart local v46       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    move-object/from16 v0, v46

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v49, v0

    and-int/lit8 v49, v49, 0x8

    if-nez v49, :cond_0

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, v46

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/HashMap;

    .line 642
    .local v42, procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    if-nez v42, :cond_3

    .line 643
    new-instance v42, Ljava/util/HashMap;

    .end local v42           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    invoke-direct/range {v42 .. v42}, Ljava/util/HashMap;-><init>()V

    .line 644
    .restart local v42       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, v46

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v50, v0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 646
    :cond_3
    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 647
    .local v40, proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v40, :cond_4

    .line 648
    const/4 v13, 0x1

    .line 649
    new-instance v40, Lcom/android/settings/applications/RunningState$ProcessItem;

    .end local v40           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v46

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v49, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move/from16 v2, v49

    move-object/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 650
    .restart local v40       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v49

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    :cond_4
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v50, v0

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_8

    .line 654
    move-object/from16 v0, v46

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v49, v0

    const-wide/16 v51, 0x0

    cmp-long v49, v49, v51

    if-nez v49, :cond_9

    move-object/from16 v0, v46

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v49, v0

    move/from16 v36, v49

    .line 655
    .local v36, pid:I
    :goto_3
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v49, v0

    move/from16 v0, v36

    move/from16 v1, v49

    if-eq v0, v1, :cond_7

    .line 656
    const/4 v13, 0x1

    .line 657
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v49, v0

    move/from16 v0, v49

    move/from16 v1, v36

    if-eq v0, v1, :cond_7

    .line 658
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v49, v0

    if-eqz v49, :cond_5

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Landroid/util/SparseArray;->remove(I)V

    .line 661
    :cond_5
    if-eqz v36, :cond_6

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v36

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 664
    :cond_6
    move/from16 v0, v36

    move-object/from16 v1, v40

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 667
    :cond_7
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/util/SparseArray;->clear()V

    .line 668
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v49, v0

    move/from16 v0, v49

    move-object/from16 v1, v40

    iput v0, v1, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    .line 670
    .end local v36           #pid:I
    :cond_8
    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v49

    or-int v13, v13, v49

    goto/16 :goto_2

    .line 654
    :cond_9
    const/16 v49, 0x0

    move/from16 v36, v49

    goto :goto_3

    .line 675
    .end local v40           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v42           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .end local v46           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v41

    .line 677
    .local v41, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v41, :cond_f

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v49

    move/from16 v6, v49

    .line 678
    .local v6, NP:I
    :goto_4
    const/16 v20, 0x0

    :goto_5
    move/from16 v0, v20

    move v1, v6

    if-ge v0, v1, :cond_10

    .line 679
    move-object/from16 v0, v41

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 680
    .local v35, pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 681
    .restart local v40       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v40, :cond_c

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v40

    .end local v40           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    check-cast v40, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 686
    .restart local v40       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v40, :cond_b

    .line 687
    const/4 v13, 0x1

    .line 688
    new-instance v40, Lcom/android/settings/applications/RunningState$ProcessItem;

    .end local v40           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v35

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v49, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move/from16 v2, v49

    move-object/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 689
    .restart local v40       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v35

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v49, v0

    move/from16 v0, v49

    move-object/from16 v1, v40

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v50, v0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 692
    :cond_b
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/util/SparseArray;->clear()V

    .line 695
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v49

    if-eqz v49, :cond_e

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_d

    .line 697
    const/4 v13, 0x1

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v49, v0

    move/from16 v0, v49

    move-object/from16 v1, v40

    iput v0, v1, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    .line 701
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 704
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v49, v0

    move/from16 v0, v49

    move-object/from16 v1, v40

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    .line 705
    move-object/from16 v0, v35

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 678
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_5

    .line 677
    .end local v6           #NP:I
    .end local v35           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v40           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_f
    const/16 v49, 0x0

    move/from16 v6, v49

    goto/16 :goto_4

    .line 710
    .restart local v6       #NP:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 711
    .local v7, NRP:I
    const/16 v20, 0x0

    :goto_6
    move/from16 v0, v20

    move v1, v7

    if-ge v0, v1, :cond_15

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 713
    .restart local v40       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v50, v0

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_14

    .line 714
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move v15, v0

    .line 715
    .local v15, clientPid:I
    if-eqz v15, :cond_13

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 717
    .local v14, client:Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v14, :cond_11

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #client:Lcom/android/settings/applications/RunningState$ProcessItem;
    check-cast v14, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 720
    .restart local v14       #client:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_11
    if-eqz v14, :cond_12

    .line 721
    move-object v0, v14

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v50, v0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 711
    .end local v14           #client:Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v15           #clientPid:I
    :cond_12
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 727
    .restart local v15       #clientPid:I
    :cond_13
    const/16 v49, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    goto :goto_7

    .line 730
    .end local v15           #clientPid:I
    :cond_14
    const/4 v13, 0x1

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v50

    invoke-virtual/range {v49 .. v50}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_7

    .line 736
    .end local v40           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 737
    .local v5, NHP:I
    const/16 v20, 0x0

    :goto_8
    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_17

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 739
    .restart local v40       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v49

    if-nez v49, :cond_16

    .line 740
    const/4 v13, 0x1

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 742
    add-int/lit8 v20, v20, -0x1

    .line 743
    add-int/lit8 v5, v5, -0x1

    .line 737
    :cond_16
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 750
    .end local v40           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 751
    .local v4, NAP:I
    const/16 v20, 0x0

    :goto_9
    move/from16 v0, v20

    move v1, v4

    if-ge v0, v1, :cond_19

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 753
    .restart local v40       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v50, v0

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_18

    .line 754
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v49, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v49

    or-int v13, v13, v49

    .line 751
    :cond_18
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 759
    .end local v40           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_19
    const/16 v20, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/util/SparseArray;->size()I

    move-result v49

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_20

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/HashMap;

    .line 761
    .restart local v42       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    invoke-virtual/range {v42 .. v42}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .line 762
    .local v38, pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_1a
    :goto_b
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_1f

    .line 763
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 764
    .local v35, pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v50, v0

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_1d

    .line 765
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 766
    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v49, v0

    if-nez v49, :cond_1b

    .line 769
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/util/SparseArray;->clear()V

    .line 782
    :cond_1b
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .line 783
    .local v47, sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ServiceItem;>;"
    :cond_1c
    :goto_c
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_1a

    .line 784
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 785
    .local v46, si:Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v50, v0

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_1c

    .line 786
    const/4 v13, 0x1

    .line 787
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 772
    .end local v46           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    .end local v47           #sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ServiceItem;>;"
    :cond_1d
    const/4 v13, 0x1

    .line 773
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->remove()V

    .line 774
    invoke-virtual/range {v42 .. v42}, Ljava/util/HashMap;->size()I

    move-result v49

    if-nez v49, :cond_1e

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v50

    invoke-virtual/range {v49 .. v50}, Landroid/util/SparseArray;->remove(I)V

    .line 777
    :cond_1e
    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v49, v0

    if-eqz v49, :cond_1a

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_b

    .line 759
    .end local v35           #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1f
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_a

    .line 793
    .end local v38           #pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .end local v42           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_20
    if-eqz v13, :cond_31

    .line 795
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 796
    .local v48, sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    const/16 v20, 0x0

    .end local p2
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/util/SparseArray;->size()I

    move-result v49

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_25

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_e
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_24

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 798
    .restart local v35       #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 799
    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 800
    const-wide v49, 0x7fffffffffffffffL

    move-wide/from16 v0, v49

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    .line 801
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_21
    :goto_f
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_23

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 802
    .restart local v46       #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v49, v0

    if-eqz v49, :cond_22

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v49, v0

    and-int/lit8 v49, v49, 0x1

    if-eqz v49, :cond_22

    .line 805
    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 807
    :cond_22
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v49, v0

    if-eqz v49, :cond_21

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v49, v0

    if-eqz v49, :cond_21

    .line 809
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 810
    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v49, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v51, v0

    cmp-long v49, v49, v51

    if-lez v49, :cond_21

    .line 811
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v49, v0

    move-wide/from16 v0, v49

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_f

    .line 815
    .end local v46           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_23
    move-object/from16 v0, v48

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 796
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v35           #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_24
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_d

    .line 819
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    move-object/from16 v49, v0

    invoke-static/range {v48 .. v49}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 821
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .local v29, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 823
    .local v30, newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->clear()V

    .line 824
    const/16 v20, 0x0

    :goto_10
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v49

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_2d

    .line 825
    move-object/from16 v0, v48

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 826
    .restart local v35       #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$BaseItem;->mNeedDivider:Z

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 830
    .local v16, firstProc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 832
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v49, v0

    if-lez v49, :cond_26

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    :cond_26
    const/16 v24, 0x0

    .line 839
    .local v24, mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    const/16 v19, 0x0

    .line 840
    .local v19, haveAllMerged:Z
    const/16 v26, 0x0

    .line 841
    .local v26, needDivider:Z
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_29

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 842
    .restart local v46       #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    move/from16 v0, v26

    move-object/from16 v1, v46

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$BaseItem;->mNeedDivider:Z

    .line 843
    const/16 v26, 0x1

    .line 844
    move-object/from16 v0, v29

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v49, v0

    if-eqz v49, :cond_28

    .line 846
    if-eqz v24, :cond_27

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v49, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    if-eq v0, v1, :cond_27

    .line 847
    const/16 v19, 0x0

    .line 849
    :cond_27
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v24, v0

    goto :goto_11

    .line 851
    :cond_28
    const/16 v19, 0x0

    goto :goto_11

    .line 855
    .end local v46           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_29
    if-eqz v19, :cond_2a

    if-eqz v24, :cond_2a

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v49

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/HashMap;->size()I

    move-result v50

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_2c

    .line 858
    :cond_2a
    new-instance v24, Lcom/android/settings/applications/RunningState$MergedItem;

    .end local v24           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    invoke-direct/range {v24 .. v24}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>()V

    .line 859
    .restart local v24       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_12
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_2b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 860
    .restart local v46       #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    move-object/from16 v0, v24

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    goto :goto_12

    .line 863
    .end local v46           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_2b
    move-object/from16 v0, v35

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 864
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->clear()V

    .line 865
    move/from16 v25, v16

    .local v25, mpi:I
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v49

    const/16 v50, 0x1

    sub-int v49, v49, v50

    move/from16 v0, v25

    move/from16 v1, v49

    if-ge v0, v1, :cond_2c

    .line 866
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    add-int/lit8 v25, v25, 0x1

    goto :goto_13

    .line 870
    .end local v25           #mpi:I
    :cond_2c
    const/16 v49, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 871
    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_10

    .line 876
    .end local v16           #firstProc:I
    .end local v19           #haveAllMerged:Z
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v24           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v26           #needDivider:Z
    .end local v35           #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 877
    const/16 v20, 0x0

    :goto_14
    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_30

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 879
    .restart local v40       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v49, v0

    if-nez v49, :cond_2f

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->size()I

    move-result v49

    if-gtz v49, :cond_2f

    .line 880
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v49, v0

    if-nez v49, :cond_2e

    .line 881
    new-instance v49, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-direct/range {v49 .. v49}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 882
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v49, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v49

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 884
    :cond_2e
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, p1

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 885
    const/16 v49, 0x0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v50, v0

    move-object/from16 v0, v30

    move/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_2f
    add-int/lit8 v20, v20, 0x1

    goto :goto_14

    .line 890
    .end local v40           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v49, v0

    monitor-enter v49

    .line 891
    :try_start_0
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 892
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 893
    monitor-exit v49
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    .end local v29           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .end local v30           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v48           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->clear()V

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 900
    const/16 v31, 0x0

    .line 901
    .local v31, numBackgroundProcesses:I
    const/16 v32, 0x0

    .line 902
    .local v32, numForegroundProcesses:I
    const/16 v34, 0x0

    .line 903
    .local v34, numServiceProcesses:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 904
    const/16 v20, 0x0

    :goto_15
    move/from16 v0, v20

    move v1, v7

    if-ge v0, v1, :cond_35

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 906
    .restart local v40       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v50, v0

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_34

    .line 909
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v49, v0

    const/16 v50, 0x190

    move/from16 v0, v49

    move/from16 v1, v50

    if-lt v0, v1, :cond_32

    .line 911
    add-int/lit8 v31, v31, 0x1

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    :goto_16
    add-int/lit8 v20, v20, 0x1

    goto :goto_15

    .line 893
    .end local v31           #numBackgroundProcesses:I
    .end local v32           #numForegroundProcesses:I
    .end local v34           #numServiceProcesses:I
    .end local v40           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v29       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .restart local v30       #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v48       #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :catchall_0
    move-exception v50

    :try_start_1
    monitor-exit v49
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v50

    .line 913
    .end local v29           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .end local v30           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v48           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .restart local v31       #numBackgroundProcesses:I
    .restart local v32       #numForegroundProcesses:I
    .restart local v34       #numServiceProcesses:I
    .restart local v40       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_32
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v49, v0

    const/16 v50, 0xc8

    move/from16 v0, v49

    move/from16 v1, v50

    if-gt v0, v1, :cond_33

    .line 915
    add-int/lit8 v32, v32, 0x1

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 918
    :cond_33
    const-string v49, "RunningState"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "Unknown non-service process: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, " #"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 922
    :cond_34
    add-int/lit8 v34, v34, 0x1

    goto :goto_16

    .line 926
    .end local v40           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_35
    const-wide/16 v9, 0x0

    .line 927
    .local v9, backgroundProcessMemory:J
    const-wide/16 v17, 0x0

    .line 928
    .local v17, foregroundProcessMemory:J
    const-wide/16 v43, 0x0

    .line 929
    .local v43, serviceProcessMemory:J
    const/16 v27, 0x0

    .line 931
    .local v27, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 932
    .local v33, numProc:I
    move/from16 v0, v33

    new-array v0, v0, [I

    move-object/from16 v37, v0

    .line 933
    .local v37, pids:[I
    const/16 v20, 0x0

    :goto_17
    move/from16 v0, v20

    move/from16 v1, v33

    if-ge v0, v1, :cond_36

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v49, v0

    aput v49, v37, v20

    .line 933
    add-int/lit8 v20, v20, 0x1

    goto :goto_17

    .line 936
    :cond_36
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v23

    .line 938
    .local v23, mem:[Landroid/os/Debug$MemoryInfo;
    const/4 v11, 0x0

    .line 939
    .local v11, bgIndex:I
    const/16 v20, 0x0

    move-object/from16 v28, v27

    .end local v27           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local v28, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_18
    :try_start_3
    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v49, v0

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_3d

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 941
    .restart local v40       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    aget-object v49, v23, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v50, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move-object/from16 v2, v49

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;Landroid/os/Debug$MemoryInfo;I)Z

    move-result v49

    or-int v13, v13, v49

    .line 942
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v50, v0

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_37

    .line 943
    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    move-wide/from16 v49, v0

    add-long v43, v43, v49

    move-object/from16 v27, v28

    .line 939
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v27       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_19
    add-int/lit8 v20, v20, 0x1

    move-object/from16 v28, v27

    .end local v27           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto :goto_18

    .line 944
    :cond_37
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v49, v0

    const/16 v50, 0x190

    move/from16 v0, v49

    move/from16 v1, v50

    if-lt v0, v1, :cond_3c

    .line 946
    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    move-wide/from16 v49, v0

    add-long v9, v9, v49

    .line 948
    if-eqz v28, :cond_38

    .line 949
    new-instance v24, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-direct/range {v24 .. v24}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 950
    .restart local v24       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v49, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v49

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 951
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v27, v28

    .line 966
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v27       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_1a
    const/16 v49, 0x1

    :try_start_4
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 967
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 968
    add-int/lit8 v11, v11, 0x1

    .line 969
    goto :goto_19

    .line 953
    .end local v24           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v27           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_38
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v49

    move v0, v11

    move/from16 v1, v49

    if-ge v0, v1, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_3b

    .line 955
    :cond_39
    new-instance v27, Ljava/util/ArrayList;

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 956
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v27       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/4 v12, 0x0

    .local v12, bgi:I
    :goto_1b
    if-ge v12, v11, :cond_3a

    .line 957
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v27

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    add-int/lit8 v12, v12, 0x1

    goto :goto_1b

    .line 959
    :cond_3a
    new-instance v24, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-direct/range {v24 .. v24}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 960
    .restart local v24       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v49, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v49

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 961
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1a

    .line 974
    .end local v11           #bgIndex:I
    .end local v12           #bgi:I
    .end local v23           #mem:[Landroid/os/Debug$MemoryInfo;
    .end local v24           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v33           #numProc:I
    .end local v37           #pids:[I
    .end local v40           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :catch_0
    move-exception v49

    .line 977
    :goto_1c
    if-nez v27, :cond_3e

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v49

    move/from16 v0, v49

    move/from16 v1, v31

    if-le v0, v1, :cond_3e

    .line 980
    new-instance v27, Ljava/util/ArrayList;

    .end local v27           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 981
    .restart local v27       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/4 v12, 0x0

    .restart local v12       #bgi:I
    :goto_1d
    move v0, v12

    move/from16 v1, v31

    if-ge v0, v1, :cond_3e

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v0, v27

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    add-int/lit8 v12, v12, 0x1

    goto :goto_1d

    .line 963
    .end local v12           #bgi:I
    .end local v27           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v11       #bgIndex:I
    .restart local v23       #mem:[Landroid/os/Debug$MemoryInfo;
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v33       #numProc:I
    .restart local v37       #pids:[I
    .restart local v40       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_3b
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/settings/applications/RunningState$MergedItem;

    .restart local v24       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v27, v28

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v27       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_1a

    .line 969
    .end local v24           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v27           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_3c
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v49, v0

    const/16 v50, 0xc8

    move/from16 v0, v49

    move/from16 v1, v50

    if-gt v0, v1, :cond_42

    .line 971
    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    move-wide/from16 v49, v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    add-long v17, v17, v49

    move-object/from16 v27, v28

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v27       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_19

    .end local v27           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v40           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_3d
    move-object/from16 v27, v28

    .line 975
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v27       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto :goto_1c

    .line 987
    .end local v11           #bgIndex:I
    .end local v23           #mem:[Landroid/os/Debug$MemoryInfo;
    .end local v33           #numProc:I
    .end local v37           #pids:[I
    :cond_3e
    const/16 v20, 0x0

    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v49

    move/from16 v0, v20

    move/from16 v1, v49

    if-ge v0, v1, :cond_3f

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 987
    add-int/lit8 v20, v20, 0x1

    goto :goto_1e

    .line 991
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v49, v0

    monitor-enter v49

    .line 992
    :try_start_8
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    .line 993
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    .line 994
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    .line 995
    move-wide v0, v9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    .line 996
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    .line 997
    move-wide/from16 v0, v43

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    .line 998
    if-eqz v27, :cond_40

    .line 999
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1000
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    move/from16 v50, v0

    if-eqz v50, :cond_40

    .line 1001
    const/4 v13, 0x1

    .line 1004
    :cond_40
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    move/from16 v50, v0

    if-nez v50, :cond_41

    .line 1005
    const/16 v50, 0x1

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->notifyAll()V

    .line 1008
    :cond_41
    monitor-exit v49

    .line 1010
    return v13

    .line 1008
    :catchall_1
    move-exception v50

    monitor-exit v49
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v50

    .line 974
    .end local v27           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v11       #bgIndex:I
    .restart local v23       #mem:[Landroid/os/Debug$MemoryInfo;
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v33       #numProc:I
    .restart local v37       #pids:[I
    :catch_1
    move-exception v49

    move-object/from16 v27, v28

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v27       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_1c

    .end local v27           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v40       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_42
    move-object/from16 v27, v28

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v27       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_19
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1033
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    .line 1034
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1027
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    .line 1028
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    monitor-exit v0

    return v1

    .line 581
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method pause()V
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 597
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 598
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 599
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 600
    monitor-exit v0

    .line 601
    return-void

    .line 600
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 563
    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 564
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 567
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 568
    monitor-exit v0

    .line 569
    return-void

    .line 568
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2
    .parameter "watching"

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1021
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    .line 1022
    monitor-exit v0

    .line 1023
    return-void

    .line 1022
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateNow()V
    .locals 3

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 574
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 575
    monitor-exit v0

    .line 576
    return-void

    .line 575
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method waitForData()V
    .locals 4

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 588
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v1

    goto :goto_0

    .line 592
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 593
    return-void

    .line 592
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
