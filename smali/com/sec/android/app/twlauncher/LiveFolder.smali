.class public Lcom/sec/android/app/twlauncher/LiveFolder;
.super Lcom/sec/android/app/twlauncher/Folder;
.source "LiveFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LiveFolder$FolderLoadingTask;
    }
.end annotation


# instance fields
.field private mLoadingTask:Landroid/os/AsyncTask;
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
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method static fromXml(Landroid/content/Context;Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolder;
    .locals 3
    .parameter "context"
    .parameter "folderInfo"

    .prologue
    .line 42
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LiveFolder;->isDisplayModeList(Lcom/sec/android/app/twlauncher/FolderInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f030011

    move v0, v1

    .line 44
    .local v0, layout:I
    :goto_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/LiveFolder;

    return-object p0

    .line 42
    .end local v0           #layout:I
    .restart local p0
    :cond_0
    const v1, 0x7f03000f

    move v0, v1

    goto :goto_0
.end method

.method private static isDisplayModeList(Lcom/sec/android/app/twlauncher/FolderInfo;)Z
    .locals 2
    .parameter "folderInfo"

    .prologue
    .line 48
    check-cast p0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    .end local p0
    iget v0, p0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->displayMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    const/4 v2, 0x1

    .line 77
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Folder;->bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 81
    :cond_0
    new-instance v0, Lcom/sec/android/app/twlauncher/LiveFolder$FolderLoadingTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/LiveFolder$FolderLoadingTask;-><init>(Lcom/sec/android/app/twlauncher/LiveFolder;)V

    new-array v1, v2, [Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    const/4 v2, 0x0

    check-cast p1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    .end local p1
    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LiveFolder$FolderLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    .line 82
    return-void
.end method

.method onClose()V
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Folder;->onClose()V

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;

    .line 100
    .local v0, adapter:Lcom/sec/android/app/twlauncher/LiveFolderAdapter;
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LiveFolderAdapter;->cleanup()V

    .line 103
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;

    .line 56
    .local v1, holder:Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;
    iget-boolean v4, v1, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->useBaseIntent:Z

    if-eqz v4, :cond_1

    .line 57
    iget-object p1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    .end local p1           #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    iget-object v0, p1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 58
    .local v0, baseIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 59
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 60
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 61
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    iget-wide v5, v1, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 63
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 69
    .end local v0           #baseIntent:Landroid/content/Intent;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 65
    .restart local p1       #parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_1
    iget-object v4, v1, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 66
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v5, v1, Lcom/sec/android/app/twlauncher/LiveFolderAdapter$ViewHolder;->intent:Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(position="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method onOpen()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Folder;->onOpen()V

    .line 87
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LiveFolder;->requestFocus()Z

    .line 88
    return-void
.end method
