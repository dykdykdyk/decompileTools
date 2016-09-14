.class final Lcom/crashlytics/android/core/ag;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/crashlytics/android/core/ab;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/ab;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 737
    iput-object p1, p0, Lcom/crashlytics/android/core/ag;->b:Lcom/crashlytics/android/core/ab;

    iput-object p2, p0, Lcom/crashlytics/android/core/ag;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/16 v2, 0x23

    const/4 v0, 0x0

    .line 740
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 743
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/crashlytics/android/core/ag;->a:Ljava/util/Set;

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
