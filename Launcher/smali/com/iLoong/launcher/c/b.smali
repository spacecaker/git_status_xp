.class final enum Lcom/iLoong/launcher/c/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/iLoong/launcher/c/b;

.field public static final enum b:Lcom/iLoong/launcher/c/b;

.field private static final synthetic c:[Lcom/iLoong/launcher/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/iLoong/launcher/c/b;

    const-string v1, "assets"

    invoke-direct {v0, v1, v2}, Lcom/iLoong/launcher/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iLoong/launcher/c/b;->a:Lcom/iLoong/launcher/c/b;

    new-instance v0, Lcom/iLoong/launcher/c/b;

    const-string v1, "custom"

    invoke-direct {v0, v1, v3}, Lcom/iLoong/launcher/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iLoong/launcher/c/b;->b:Lcom/iLoong/launcher/c/b;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iLoong/launcher/c/b;

    sget-object v1, Lcom/iLoong/launcher/c/b;->a:Lcom/iLoong/launcher/c/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iLoong/launcher/c/b;->b:Lcom/iLoong/launcher/c/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iLoong/launcher/c/b;->c:[Lcom/iLoong/launcher/c/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iLoong/launcher/c/b;
    .locals 1

    const-class v0, Lcom/iLoong/launcher/c/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/c/b;

    return-object v0
.end method

.method public static values()[Lcom/iLoong/launcher/c/b;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/iLoong/launcher/c/b;->c:[Lcom/iLoong/launcher/c/b;

    array-length v1, v0

    new-array v2, v1, [Lcom/iLoong/launcher/c/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
