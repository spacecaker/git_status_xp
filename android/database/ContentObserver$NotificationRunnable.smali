.class final Landroid/database/ContentObserver$NotificationRunnable;
.super Ljava/lang/Object;
.source "ContentObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationRunnable"
.end annotation


# instance fields
.field private mSelf:Z

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/database/ContentObserver;Landroid/net/Uri;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Landroid/database/ContentObserver$NotificationRunnable;->this$0:Landroid/database/ContentObserver;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/ContentObserver$NotificationRunnable;->mUri:Landroid/net/Uri;

    .line 45
    iput-boolean p3, p0, Landroid/database/ContentObserver$NotificationRunnable;->mSelf:Z

    .line 46
    iput-object p2, p0, Landroid/database/ContentObserver$NotificationRunnable;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/database/ContentObserver;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Landroid/database/ContentObserver$NotificationRunnable;->this$0:Landroid/database/ContentObserver;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/ContentObserver$NotificationRunnable;->mUri:Landroid/net/Uri;

    .line 41
    iput-boolean p2, p0, Landroid/database/ContentObserver$NotificationRunnable;->mSelf:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Landroid/database/ContentObserver$NotificationRunnable;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Landroid/database/ContentObserver$NotificationRunnable;->this$0:Landroid/database/ContentObserver;

    iget-object v1, p0, Landroid/database/ContentObserver$NotificationRunnable;->mUri:Landroid/net/Uri;

    iget-boolean v2, p0, Landroid/database/ContentObserver$NotificationRunnable;->mSelf:Z

    invoke-virtual {v0, v1, v2}, Landroid/database/ContentObserver;->onChangeUri(Landroid/net/Uri;Z)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Landroid/database/ContentObserver$NotificationRunnable;->this$0:Landroid/database/ContentObserver;

    iget-boolean v1, p0, Landroid/database/ContentObserver$NotificationRunnable;->mSelf:Z

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    goto :goto_0
.end method
