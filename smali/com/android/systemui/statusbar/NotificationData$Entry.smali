.class public final Lcom/android/systemui/statusbar/NotificationData$Entry;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public content:Landroid/view/View;

.field public expanded:Landroid/view/View;

.field public icon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field public key:Landroid/os/IBinder;

.field public notification:LStatusBarNotification;

.field public row:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe import com.android.internal.statusbar cannot be resolved\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
