.class final Lcom/nut/blehunter/x;
.super La/a/c;
.source "NutTrackerApplication.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, La/a/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/nut/blehunter/x;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public final varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 248
    invoke-static {}, Lcom/nut/blehunter/NutTrackerApplication;->a()Lcom/nut/blehunter/NutTrackerApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/NutTrackerApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/nut/blehunter/NutTrackerApplication;->a()Lcom/nut/blehunter/NutTrackerApplication;

    move-result-object v1

    .line 2144
    iget-object v1, v1, Lcom/nut/blehunter/NutTrackerApplication;->c:Ljava/lang/String;

    .line 248
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 251
    return-void
.end method

.method public final varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 255
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/a;->a(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public final varargs b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p0, p2, p3}, Lcom/nut/blehunter/x;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    invoke-static {}, Lcom/nut/blehunter/NutTrackerApplication;->a()Lcom/nut/blehunter/NutTrackerApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/NutTrackerApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/nut/blehunter/NutTrackerApplication;->a()Lcom/nut/blehunter/NutTrackerApplication;

    move-result-object v1

    .line 3144
    iget-object v1, v1, Lcom/nut/blehunter/NutTrackerApplication;->c:Ljava/lang/String;

    .line 3157
    invoke-static {p1}, Lcom/nut/blehunter/p;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 3158
    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 264
    return-void
.end method
