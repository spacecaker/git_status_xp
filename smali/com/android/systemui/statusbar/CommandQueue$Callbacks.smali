.class public interface abstract Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.super Ljava/lang/Object;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe import com.android.internal.statusbar cannot be resolved\n\tThe import com.android.internal.statusbar cannot be resolved\n\tThe import com.android.internal.statusbar cannot be resolved\n\tThe import com.android.internal.statusbar cannot be resolved\n\tIStatusBar cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarIconList cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract addIcon(Ljava/lang/String;IILStatusBarIcon;)V
.end method

.method public abstract addNotification(Landroid/os/IBinder;LStatusBarNotification;)V
.end method

.method public abstract animateCollapse()V
.end method

.method public abstract animateExpand()V
.end method

.method public abstract disable(I)V
.end method

.method public abstract removeIcon(Ljava/lang/String;II)V
.end method

.method public abstract removeNotification(Landroid/os/IBinder;)V
.end method

.method public abstract updateIcon(Ljava/lang/String;IILStatusBarIcon;LStatusBarIcon;)V
.end method

.method public abstract updateNotification(Landroid/os/IBinder;LStatusBarNotification;)V
.end method
