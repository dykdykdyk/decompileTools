.class public final Lcom/crashlytics/android/core/cg;
.super Ljava/lang/Object;
.source "UserMetaData.java"


# static fields
.field public static final a:Lcom/crashlytics/android/core/cg;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/crashlytics/android/core/cg;

    invoke-direct {v0}, Lcom/crashlytics/android/core/cg;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/cg;->a:Lcom/crashlytics/android/core/cg;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v0, v0}, Lcom/crashlytics/android/core/cg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/crashlytics/android/core/cg;->b:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/crashlytics/android/core/cg;->c:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/crashlytics/android/core/cg;->d:Ljava/lang/String;

    .line 35
    return-void
.end method
