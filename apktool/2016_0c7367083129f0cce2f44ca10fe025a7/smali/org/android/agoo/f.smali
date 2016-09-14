.class public abstract enum Lorg/android/agoo/f;
.super Ljava/lang/Enum;
.source "AgooSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/android/agoo/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/android/agoo/f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum b:Lorg/android/agoo/f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum c:Lorg/android/agoo/f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum d:Lorg/android/agoo/f;

.field public static final enum e:Lorg/android/agoo/f;

.field private static final synthetic g:[Lorg/android/agoo/f;


# instance fields
.field f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 601
    new-instance v0, Lorg/android/agoo/g;

    const-string v1, "TEST_SINGLE"

    invoke-direct {v0, v1}, Lorg/android/agoo/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/android/agoo/f;->a:Lorg/android/agoo/f;

    .line 622
    new-instance v0, Lorg/android/agoo/h;

    const-string v1, "TEST"

    invoke-direct {v0, v1}, Lorg/android/agoo/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/android/agoo/f;->b:Lorg/android/agoo/f;

    .line 644
    new-instance v0, Lorg/android/agoo/i;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1}, Lorg/android/agoo/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/android/agoo/f;->c:Lorg/android/agoo/f;

    .line 666
    new-instance v0, Lorg/android/agoo/j;

    const-string v1, "TAOBAO"

    invoke-direct {v0, v1}, Lorg/android/agoo/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/android/agoo/f;->d:Lorg/android/agoo/f;

    .line 687
    new-instance v0, Lorg/android/agoo/k;

    const-string v1, "RELEASE"

    invoke-direct {v0, v1}, Lorg/android/agoo/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/android/agoo/f;->e:Lorg/android/agoo/f;

    .line 600
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/android/agoo/f;

    const/4 v1, 0x0

    sget-object v2, Lorg/android/agoo/f;->a:Lorg/android/agoo/f;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/android/agoo/f;->b:Lorg/android/agoo/f;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/android/agoo/f;->c:Lorg/android/agoo/f;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/android/agoo/f;->d:Lorg/android/agoo/f;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/android/agoo/f;->e:Lorg/android/agoo/f;

    aput-object v2, v0, v1

    sput-object v0, Lorg/android/agoo/f;->g:[Lorg/android/agoo/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 710
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 711
    iput p3, p0, Lorg/android/agoo/f;->f:I

    .line 712
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIB)V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/f;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/android/agoo/f;
    .locals 1

    .prologue
    .line 600
    const-class v0, Lorg/android/agoo/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/f;

    return-object v0
.end method

.method public static values()[Lorg/android/agoo/f;
    .locals 1

    .prologue
    .line 600
    sget-object v0, Lorg/android/agoo/f;->g:[Lorg/android/agoo/f;

    invoke-virtual {v0}, [Lorg/android/agoo/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/android/agoo/f;

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method
