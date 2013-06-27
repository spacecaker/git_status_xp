.class Lcom/android/music/QueryBrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/QueryBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/QueryBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    #getter for: Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;
    invoke-static {v0}, Lcom/android/music/QueryBrowserActivity;->access$000(Lcom/android/music/QueryBrowserActivity;)Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    #getter for: Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;
    invoke-static {v0}, Lcom/android/music/QueryBrowserActivity;->access$000(Lcom/android/music/QueryBrowserActivity;)Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$1;->this$0:Lcom/android/music/QueryBrowserActivity;

    #getter for: Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;
    invoke-static {v0}, Lcom/android/music/QueryBrowserActivity;->access$000(Lcom/android/music/QueryBrowserActivity;)Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 92
    :cond_0
    return-void
.end method
