.class Lcom/android/systemui/statusbar/CommandQueue;
.super Ljava/lang/Object;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/CommandQueue$Callbacks;,
        Lcom/android/systemui/statusbar/CommandQueue$H;,
        Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;
    }
.end annotation


# static fields
.field private static final INDEX_MASK:I = 0xffff

.field private static final MSG_ADD_NOTIFICATION:I = 0x20000

.field private static final MSG_DISABLE:I = 0x50000

.field private static final MSG_ICON:I = 0x10000

.field private static final MSG_MASK:I = -0x10000

.field private static final MSG_REMOVE_NOTIFICATION:I = 0x40000

.field private static final MSG_SET_VISIBILITY:I = 0x60000

.field private static final MSG_UPDATE_NOTIFICATION:I = 0x30000

.field private static final OP_COLLAPSE:I = 0x2

.field private static final OP_EXPAND:I = 0x1

.field private static final OP_REMOVE_ICON:I = 0x2

.field private static final OP_SET_ICON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "StatusBar.CommandQueue"


# instance fields
.field private mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

.field private mHandler:Landroid/os/Handler;

.field private mList:LStatusBarIconList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;LStatusBarIconList;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe import com.android.internal.statusbar cannot be resolved\n\tThe import com.android.internal.statusbar cannot be resolved\n\tThe import com.android.internal.statusbar cannot be resolved\n\tThe import com.android.internal.statusbar cannot be resolved\n\tIStatusBar cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addNotification(Landroid/os/IBinder;LStatusBarNotification;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public animateCollapse()V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tStatusBarIconList cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public animateExpand()V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tStatusBarIconList cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disable(I)V
    .locals 2
    .parameter

    .prologue
    .line 127
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tStatusBarIconList cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hideCallOnGoingView()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIcon(I)V
    .locals 2
    .parameter

    .prologue
    .line 95
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tStatusBarIconList cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 2
    .parameter

    .prologue
    .line 121
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tStatusBarIconList cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIcon(ILStatusBarIcon;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showCallOnGoingView()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateNotification(Landroid/os/IBinder;LStatusBarNotification;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 111
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
