.class public Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
.super Ljava/lang/Object;
.source "SamsungAppWidgetItem.java"


# instance fields
.field public mClassName:Ljava/lang/String;

.field public mHorizontalHeight:I

.field public mHorizontalWidth:I

.field public mPackageName:Ljava/lang/String;

.field public mVerticalHeight:I

.field public mVerticalWidth:I

.field public mWidgetTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 12
    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I

    .line 13
    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 14
    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 20
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getHeight(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 44
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 45
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 47
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalHeight:I

    goto :goto_0
.end method

.method public getWidth(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 36
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 37
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 39
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mVerticalWidth:I

    goto :goto_0
.end method
