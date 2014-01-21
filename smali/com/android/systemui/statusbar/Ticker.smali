.class public abstract Lcom/android/systemui/statusbar/Ticker;
.super Ljava/lang/Object;
.source "Ticker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/Ticker$Segment;
    }
.end annotation


# static fields
.field private static final TICKER_SEGMENT_DELAY:I = 0xbb8


# instance fields
.field private mAdvanceTicker:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIconSwitcher:Landroid/widget/ImageSwitcher;

.field private mPaint:Landroid/text/TextPaint;

.field private mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/Ticker$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private mTextSwitcher:Landroid/widget/TextSwitcher;

.field private mTickerView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/StatusBarView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe import android.util.Slog cannot be resolved\n\tThe import com.android.internal.statusbar cannot be resolved\n\tThe import com.android.internal.statusbar cannot be resolved\n\tThe import com.android.internal.util.CharSequences cannot be resolved\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tcom.android.internal.R cannot be resolved to a variable\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tCharSequences cannot be resolved\n\tStatusBarNotification cannot be resolved to a type\n\tThe method getIcon(Context, StatusBarIcon) from the type StatusBarIconView refers to the missing type StatusBarIcon\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scheduleAdvance()V
    .locals 2

    .prologue
    .line 265
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method addEntry(LStatusBarNotification;)V
    .locals 2
    .parameter

    .prologue
    .line 166
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tCharSequences cannot be resolved\n\tStatusBarNotification cannot be resolved to a type\n\tThe method getIcon(Context, StatusBarIcon) from the type StatusBarIconView refers to the missing type StatusBarIcon\n\tStatusBarIcon cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method halt()V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method reflowText()V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeEntry(LStatusBarNotification;)V
    .locals 2
    .parameter

    .prologue
    .line 215
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n\tStatusBarNotification cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract tickerDone()V
.end method

.method abstract tickerHalting()V
.end method

.method abstract tickerStarting()V
.end method
