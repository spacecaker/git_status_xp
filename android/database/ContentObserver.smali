.class public abstract Landroid/database/ContentObserver;
.super Ljava/lang/Object;
.source "ContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/ContentObserver$NotificationRunnable;,
        Landroid/database/ContentObserver$Transport;
    }
.end annotation


# instance fields
.field private lock:Ljava/lang/Object;

.field mHandler:Landroid/os/Handler;

.field private mTransport:Landroid/database/ContentObserver$Transport;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/ContentObserver;->lock:Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    .line 99
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public final dispatchChange(Landroid/net/Uri;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0, p1, p2}, Landroid/database/ContentObserver;->onChangeUri(Landroid/net/Uri;Z)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/database/ContentObserver$NotificationRunnable;

    invoke-direct {v1, p0, p1, p2}, Landroid/database/ContentObserver$NotificationRunnable;-><init>(Landroid/database/ContentObserver;Landroid/net/Uri;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final dispatchChange(Z)V
    .locals 2
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/database/ContentObserver$NotificationRunnable;

    invoke-direct {v1, p0, p1}, Landroid/database/ContentObserver$NotificationRunnable;-><init>(Landroid/database/ContentObserver;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getContentObserver()Landroid/database/IContentObserver;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Landroid/database/ContentObserver;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Landroid/database/ContentObserver$Transport;

    invoke-direct {v1, p0}, Landroid/database/ContentObserver$Transport;-><init>(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    .line 111
    :cond_0
    iget-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    monitor-exit v0

    return-object v1

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onChange(Z)V
    .locals 0
    .parameter

    .prologue
    .line 147
    return-void
.end method

.method public onChangeUri(Landroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    return-void
.end method

.method public releaseContentObserver()Landroid/database/IContentObserver;
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Landroid/database/ContentObserver;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    .line 124
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v1}, Landroid/database/ContentObserver$Transport;->releaseContentObserver()V

    .line 126
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    .line 128
    :cond_0
    monitor-exit v0

    return-object v1

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
