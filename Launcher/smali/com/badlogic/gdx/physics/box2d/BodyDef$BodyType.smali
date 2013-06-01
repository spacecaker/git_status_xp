.class public final enum Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum DynamicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

.field private static final synthetic ENUM$VALUES:[Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

.field public static final enum KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

.field public static final enum StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    const-string v1, "StaticBody"

    invoke-direct {v0, v1, v2, v2}, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    const-string v1, "KinematicBody"

    invoke-direct {v0, v1, v3, v3}, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    const-string v1, "DynamicBody"

    invoke-direct {v0, v1, v4, v4}, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->DynamicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->DynamicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->ENUM$VALUES:[Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->ENUM$VALUES:[Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    array-length v1, v0

    new-array v2, v1, [Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->value:I

    return v0
.end method
