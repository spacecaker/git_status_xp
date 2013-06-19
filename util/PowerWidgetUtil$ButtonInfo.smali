.class public Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;
.super Ljava/lang/Object;
.source "PowerWidgetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/util/PowerWidgetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonInfo"
.end annotation


# instance fields
.field private mIcon:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mTitleResId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "titleResId"
    .parameter "icon"

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;->mId:Ljava/lang/String;

    .line 195
    iput p2, p0, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;->mTitleResId:I

    .line 196
    iput-object p3, p0, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;->mIcon:Ljava/lang/String;

    .line 197
    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleResId()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/lidroid/util/PowerWidgetUtil$ButtonInfo;->mTitleResId:I

    return v0
.end method
