.class public final Lcom/crashlytics/android/a/z;
.super Ljava/lang/Object;
.source "SessionAnalyticsManager.java"

# interfaces
.implements Lcom/crashlytics/android/a/o;


# instance fields
.field final a:J

.field public final b:Lcom/crashlytics/android/a/b;

.field final c:Lio/fabric/sdk/android/a;

.field final d:Lcom/crashlytics/android/a/m;

.field final e:Lcom/crashlytics/android/a/k;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/a/b;Lio/fabric/sdk/android/a;Lcom/crashlytics/android/a/m;Lcom/crashlytics/android/a/k;J)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/crashlytics/android/a/z;->b:Lcom/crashlytics/android/a/b;

    .line 61
    iput-object p2, p0, Lcom/crashlytics/android/a/z;->c:Lio/fabric/sdk/android/a;

    .line 62
    iput-object p3, p0, Lcom/crashlytics/android/a/z;->d:Lcom/crashlytics/android/a/m;

    .line 63
    iput-object p4, p0, Lcom/crashlytics/android/a/z;->e:Lcom/crashlytics/android/a/k;

    .line 64
    iput-wide p5, p0, Lcom/crashlytics/android/a/z;->a:J

    .line 65
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 133
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Flush events when app is backgrounded"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/crashlytics/android/a/z;->b:Lcom/crashlytics/android/a/b;

    .line 2136
    new-instance v1, Lcom/crashlytics/android/a/g;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/a/g;-><init>(Lcom/crashlytics/android/a/b;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/a/b;->a(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/crashlytics/android/a/ad;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 127
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Answers"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Logged lifecycle event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/crashlytics/android/a/ad;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/crashlytics/android/a/z;->b:Lcom/crashlytics/android/a/b;

    .line 1037
    const-string v1, "activity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 1039
    new-instance v2, Lcom/crashlytics/android/a/ac;

    invoke-direct {v2, p2}, Lcom/crashlytics/android/a/ac;-><init>(Lcom/crashlytics/android/a/ad;)V

    .line 1106
    iput-object v1, v2, Lcom/crashlytics/android/a/ac;->c:Ljava/util/Map;

    .line 2044
    invoke-virtual {v0, v2, v4, v4}, Lcom/crashlytics/android/a/b;->a(Lcom/crashlytics/android/a/ac;ZZ)V

    .line 129
    return-void
.end method
