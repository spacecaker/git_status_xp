.class Lcom/sec/android/app/twlauncher/LiveFolder$FolderLoadingTask;
.super Landroid/os/AsyncTask;
.source "LiveFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LiveFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FolderLoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sec/android/app/twlauncher/LiveFolderInfo;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/twlauncher/LiveFolder;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LiveFolder;)V
    .locals 1
    .parameter "folder"

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LiveFolder$FolderLoadingTask;->mFolder:Ljava/lang/ref/WeakReference;

    .line 111
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sec/android/app/twlauncher/LiveFolderInfo;)Landroid/database/Cursor;
    .locals 3
    .parameter "params"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LiveFolder$FolderLoadingTask;->mFolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LiveFolder;

    .line 115
    .local v0, folder:Lcom/sec/android/app/twlauncher/LiveFolder;
    if-eqz v0, :cond_0

    .line 116
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LiveFolder$FolderLoadingTask;->mInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    .line 117
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LiveFolder$FolderLoadingTask;->mInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->query(Landroid/content/Context;Lcom/sec/android/app/twlauncher/LiveFolderInfo;)Landroid/database/Cursor;

    move-result-object v1

    .line 119
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    check-cast p1, [Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LiveFolder$FolderLoadingTask;->doInBackground([Lcom/sec/android/app/twlauncher/LiveFolderInfo;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LiveFolder$FolderLoadingTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    if-eqz p1, :cond_0

    .line 126
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LiveFolder$FolderLoadingTask;->mFolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LiveFolder;

    .line 127
    .local v0, folder:Lcom/sec/android/app/twlauncher/LiveFolder;
    if-eqz v0, :cond_0

    .line 128
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 129
    .local v1, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    new-instance v2, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LiveFolder$FolderLoadingTask;->mInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    invoke-direct {v2, v1, v3, p1}, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LiveFolderInfo;Landroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/LiveFolder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    .line 135
    .end local v0           #folder:Lcom/sec/android/app/twlauncher/LiveFolder;
    .end local v1           #launcher:Lcom/sec/android/app/twlauncher/Launcher;
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    if-eqz p1, :cond_0

    .line 133
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LiveFolder$FolderLoadingTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
