.class final Lcom/soundcloud/android/crop/s;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/soundcloud/android/crop/z;

.field final synthetic b:Z

.field final synthetic c:Lcom/soundcloud/android/crop/q;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/q;Lcom/soundcloud/android/crop/z;Z)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/soundcloud/android/crop/s;->c:Lcom/soundcloud/android/crop/q;

    iput-object p2, p0, Lcom/soundcloud/android/crop/s;->a:Lcom/soundcloud/android/crop/z;

    iput-boolean p3, p0, Lcom/soundcloud/android/crop/s;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/soundcloud/android/crop/s;->c:Lcom/soundcloud/android/crop/q;

    iget-object v1, p0, Lcom/soundcloud/android/crop/s;->a:Lcom/soundcloud/android/crop/z;

    iget-boolean v2, p0, Lcom/soundcloud/android/crop/s;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/soundcloud/android/crop/q;->a(Lcom/soundcloud/android/crop/z;Z)V

    .line 175
    return-void
.end method
