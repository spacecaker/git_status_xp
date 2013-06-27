.class public Lcom/sec/android/app/music/DrmPopupData;
.super Ljava/lang/Object;
.source "DrmPopupData.java"


# instance fields
.field public id:J

.field public popupFilePath:Ljava/lang/String;

.field public popupFrom:I

.field public popupStrings:[I

.field public popupType:I

.field public popupUri:Landroid/net/Uri;

.field public position:I

.field public remainCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/sec/android/app/music/DrmPopupData;->remainCount:I

    .line 15
    iput v0, p0, Lcom/sec/android/app/music/DrmPopupData;->popupType:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/music/DrmPopupData;->popupFrom:I

    return-void
.end method
