.class public final Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
.super Ljava/lang/Object;
.source "NavbarEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavbarEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ButtonInfo"
.end annotation


# instance fields
.field public contentDescription:I

.field public displayId:I

.field public keyCode:I

.field public landResource:I

.field public portResource:I

.field public sideResource:I


# direct methods
.method constructor <init>(IIIIII)V
    .locals 0
    .parameter "rId"
    .parameter "cD"
    .parameter "mC"
    .parameter "pR"
    .parameter "lR"
    .parameter "sR"

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->displayId:I

    .line 417
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->contentDescription:I

    .line 418
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->keyCode:I

    .line 419
    iput p4, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->portResource:I

    .line 420
    iput p5, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->landResource:I

    .line 421
    iput p6, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->sideResource:I

    .line 422
    return-void
.end method
