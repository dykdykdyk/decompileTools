.class public final enum Lcom/crashlytics/android/a/ad;
.super Ljava/lang/Enum;
.source "SessionEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/crashlytics/android/a/ad;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/crashlytics/android/a/ad;

.field public static final enum b:Lcom/crashlytics/android/a/ad;

.field public static final enum c:Lcom/crashlytics/android/a/ad;

.field public static final enum d:Lcom/crashlytics/android/a/ad;

.field public static final enum e:Lcom/crashlytics/android/a/ad;

.field public static final enum f:Lcom/crashlytics/android/a/ad;

.field public static final enum g:Lcom/crashlytics/android/a/ad;

.field public static final enum h:Lcom/crashlytics/android/a/ad;

.field private static final synthetic i:[Lcom/crashlytics/android/a/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/crashlytics/android/a/ad;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/crashlytics/android/a/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/a/ad;->a:Lcom/crashlytics/android/a/ad;

    .line 16
    new-instance v0, Lcom/crashlytics/android/a/ad;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v4}, Lcom/crashlytics/android/a/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/a/ad;->b:Lcom/crashlytics/android/a/ad;

    .line 17
    new-instance v0, Lcom/crashlytics/android/a/ad;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/crashlytics/android/a/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/a/ad;->c:Lcom/crashlytics/android/a/ad;

    .line 18
    new-instance v0, Lcom/crashlytics/android/a/ad;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v6}, Lcom/crashlytics/android/a/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/a/ad;->d:Lcom/crashlytics/android/a/ad;

    .line 19
    new-instance v0, Lcom/crashlytics/android/a/ad;

    const-string v1, "CRASH"

    invoke-direct {v0, v1, v7}, Lcom/crashlytics/android/a/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/a/ad;->e:Lcom/crashlytics/android/a/ad;

    .line 20
    new-instance v0, Lcom/crashlytics/android/a/ad;

    const-string v1, "INSTALL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/a/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/a/ad;->f:Lcom/crashlytics/android/a/ad;

    .line 21
    new-instance v0, Lcom/crashlytics/android/a/ad;

    const-string v1, "CUSTOM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/a/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/a/ad;->g:Lcom/crashlytics/android/a/ad;

    .line 22
    new-instance v0, Lcom/crashlytics/android/a/ad;

    const-string v1, "PREDEFINED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/a/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/a/ad;->h:Lcom/crashlytics/android/a/ad;

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/crashlytics/android/a/ad;

    sget-object v1, Lcom/crashlytics/android/a/ad;->a:Lcom/crashlytics/android/a/ad;

    aput-object v1, v0, v3

    sget-object v1, Lcom/crashlytics/android/a/ad;->b:Lcom/crashlytics/android/a/ad;

    aput-object v1, v0, v4

    sget-object v1, Lcom/crashlytics/android/a/ad;->c:Lcom/crashlytics/android/a/ad;

    aput-object v1, v0, v5

    sget-object v1, Lcom/crashlytics/android/a/ad;->d:Lcom/crashlytics/android/a/ad;

    aput-object v1, v0, v6

    sget-object v1, Lcom/crashlytics/android/a/ad;->e:Lcom/crashlytics/android/a/ad;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/crashlytics/android/a/ad;->f:Lcom/crashlytics/android/a/ad;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/crashlytics/android/a/ad;->g:Lcom/crashlytics/android/a/ad;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/crashlytics/android/a/ad;->h:Lcom/crashlytics/android/a/ad;

    aput-object v2, v0, v1

    sput-object v0, Lcom/crashlytics/android/a/ad;->i:[Lcom/crashlytics/android/a/ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crashlytics/android/a/ad;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/crashlytics/android/a/ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/a/ad;

    return-object v0
.end method

.method public static values()[Lcom/crashlytics/android/a/ad;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/crashlytics/android/a/ad;->i:[Lcom/crashlytics/android/a/ad;

    invoke-virtual {v0}, [Lcom/crashlytics/android/a/ad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crashlytics/android/a/ad;

    return-object v0
.end method
