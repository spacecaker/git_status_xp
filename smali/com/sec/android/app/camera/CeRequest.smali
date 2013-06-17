.class public Lcom/sec/android/app/camera/CeRequest;
.super Ljava/lang/Object;
.source "CeRequest.java"


# instance fields
.field private mParam:Ljava/lang/Object;

.field private mRequest:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .parameter "request"
    .parameter "param"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CeRequest;->mParam:Ljava/lang/Object;

    .line 78
    iput p1, p0, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    .line 79
    iput-object p2, p0, Lcom/sec/android/app/camera/CeRequest;->mParam:Ljava/lang/Object;

    .line 80
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 96
    check-cast p1, Lcom/sec/android/app/camera/CeRequest;

    .end local p1
    iget v0, p1, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    iget v1, p0, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParam()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequest;->mParam:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequest()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    return v0
.end method
