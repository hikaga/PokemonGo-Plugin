.class Lcom/mopub/volley/CacheDispatcher$1;
.super Ljava/lang/Object;
.source "CacheDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/volley/CacheDispatcher;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/volley/CacheDispatcher;

.field final synthetic val$request:Lcom/mopub/volley/Request;


# direct methods
.method constructor <init>(Lcom/mopub/volley/CacheDispatcher;Lcom/mopub/volley/Request;)V
    .registers 3

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mopub/volley/CacheDispatcher$1;->this$0:Lcom/mopub/volley/CacheDispatcher;

    iput-object p2, p0, Lcom/mopub/volley/CacheDispatcher$1;->val$request:Lcom/mopub/volley/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher$1;->this$0:Lcom/mopub/volley/CacheDispatcher;

    # getter for: Lcom/mopub/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v0}, Lcom/mopub/volley/CacheDispatcher;->access$000(Lcom/mopub/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/volley/CacheDispatcher$1;->val$request:Lcom/mopub/volley/Request;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    .line 145
    :goto_b
    return-void

    .line 142
    :catch_c
    move-exception v0

    goto :goto_b
.end method
