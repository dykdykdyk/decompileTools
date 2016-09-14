.class public final Lcom/umeng/message/proguard/bc;
.super Ljava/lang/Object;
.source "SizeFactory.java"


# static fields
.field private static a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/umeng/message/proguard/bc;->a:F

    return-void
.end method

.method public static a(F)I
    .locals 2

    .prologue
    .line 20
    sget v0, Lcom/umeng/message/proguard/bc;->a:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
