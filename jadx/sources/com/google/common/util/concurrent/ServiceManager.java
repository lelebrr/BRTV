package com.google.common.util.concurrent;

import b7.r;
import b7.s;
import b7.t;
import b7.y;
import com.google.common.util.concurrent.ListenerCallQueue;
import com.google.common.util.concurrent.Monitor;
import com.google.common.util.concurrent.Service;
import d7.a5;
import d7.c0;
import d7.d0;
import d7.g0;
import d7.g1;
import d7.i0;
import d7.j2;
import d7.k2;
import d7.l2;
import d7.l5;
import d7.n2;
import d7.q1;
import d7.q4;
import d7.r0;
import d7.r1;
import d7.s4;
import d7.s5;
import d7.u1;
import d7.v4;
import d7.y1;
import d7.z1;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
public final class ServiceManager implements ServiceManagerBridge {
    private final u1 services;
    private final ServiceManagerState state;
    private static final LazyLogger logger = new LazyLogger(ServiceManager.class);
    private static final ListenerCallQueue.Event<Listener> HEALTHY_EVENT = new ListenerCallQueue.Event<Listener>() { // from class: com.google.common.util.concurrent.ServiceManager.1
        public String toString() {
            return "healthy()";
        }

        @Override // com.google.common.util.concurrent.ListenerCallQueue.Event
        public void call(Listener listener) {
            listener.healthy();
        }
    };
    private static final ListenerCallQueue.Event<Listener> STOPPED_EVENT = new ListenerCallQueue.Event<Listener>() { // from class: com.google.common.util.concurrent.ServiceManager.2
        public String toString() {
            return "stopped()";
        }

        @Override // com.google.common.util.concurrent.ListenerCallQueue.Event
        public void call(Listener listener) {
            listener.stopped();
        }
    };

    /* compiled from: MyApplication */
    public static final class EmptyServiceManagerWarning extends Throwable {
        private EmptyServiceManagerWarning() {
        }
    }

    /* compiled from: MyApplication */
    public static final class FailedService extends Throwable {
        public FailedService(Service service) {
            super(service.toString(), service.failureCause(), false, false);
        }
    }

    /* compiled from: MyApplication */
    public static final class NoOpService extends AbstractService {
        private NoOpService() {
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public void doStart() throws Exception {
            notifyStarted();
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public void doStop() throws Exception {
            notifyStopped();
        }
    }

    /* compiled from: MyApplication */
    public static final class ServiceListener extends Service.Listener {
        final Service service;
        final WeakReference<ServiceManagerState> state;

        public ServiceListener(Service service, WeakReference<ServiceManagerState> weakReference) {
            this.service = service;
            this.state = weakReference;
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void failed(Service.State state, Throwable th) throws Exception {
            ServiceManagerState serviceManagerState = this.state.get();
            if (serviceManagerState != null) {
                if ((!(this.service instanceof NoOpService)) & (state != Service.State.STARTING)) {
                    ServiceManager.logger.get().log(Level.SEVERE, "Service " + this.service + " has failed in the " + state + " state.", th);
                }
                serviceManagerState.transitionService(this.service, state, Service.State.FAILED);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void running() throws Exception {
            ServiceManagerState serviceManagerState = this.state.get();
            if (serviceManagerState != null) {
                serviceManagerState.transitionService(this.service, Service.State.STARTING, Service.State.RUNNING);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void starting() throws Exception {
            ServiceManagerState serviceManagerState = this.state.get();
            if (serviceManagerState != null) {
                serviceManagerState.transitionService(this.service, Service.State.NEW, Service.State.STARTING);
                if (this.service instanceof NoOpService) {
                    return;
                }
                ServiceManager.logger.get().log(Level.FINE, "Starting {0}.", this.service);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void stopping(Service.State state) throws Exception {
            ServiceManagerState serviceManagerState = this.state.get();
            if (serviceManagerState != null) {
                serviceManagerState.transitionService(this.service, state, Service.State.STOPPING);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void terminated(Service.State state) throws Exception {
            ServiceManagerState serviceManagerState = this.state.get();
            if (serviceManagerState != null) {
                if (!(this.service instanceof NoOpService)) {
                    ServiceManager.logger.get().log(Level.FINE, "Service {0} has terminated. Previous state was: {1}", new Object[]{this.service, state});
                }
                serviceManagerState.transitionService(this.service, state, Service.State.TERMINATED);
            }
        }
    }

    public ServiceManager(Iterable<? extends Service> iterable) {
        u1 u1VarM = u1.m(iterable);
        if (u1VarM.isEmpty()) {
            logger.get().log(Level.WARNING, "ServiceManager configured with no services.  Is your application configured properly?", (Throwable) new EmptyServiceManagerWarning());
            u1VarM = u1.r(new NoOpService());
        }
        ServiceManagerState serviceManagerState = new ServiceManagerState(u1VarM);
        this.state = serviceManagerState;
        this.services = u1VarM;
        WeakReference weakReference = new WeakReference(serviceManagerState);
        g1 g1VarListIterator = u1VarM.listIterator(0);
        while (g1VarListIterator.hasNext()) {
            Service service = (Service) g1VarListIterator.next();
            service.addListener(new ServiceListener(service, weakReference), MoreExecutors.directExecutor());
            b7.b.c(service, "Can only manage NEW services, %s", service.state() == Service.State.NEW);
        }
        this.state.markReady();
    }

    public void addListener(Listener listener, Executor executor) {
        this.state.addListener(listener, executor);
    }

    public void awaitHealthy() {
        this.state.awaitHealthy();
    }

    public void awaitStopped() {
        this.state.awaitStopped();
    }

    public boolean isHealthy() {
        g1 g1VarListIterator = this.services.listIterator(0);
        while (g1VarListIterator.hasNext()) {
            if (!((Service) g1VarListIterator.next()).isRunning()) {
                return false;
            }
        }
        return true;
    }

    public ServiceManager startAsync() {
        g1 g1VarListIterator = this.services.listIterator(0);
        while (g1VarListIterator.hasNext()) {
            b7.b.m(this, "Not all services are NEW, cannot start %s", ((Service) g1VarListIterator.next()).state() == Service.State.NEW);
        }
        g1 g1VarListIterator2 = this.services.listIterator(0);
        while (g1VarListIterator2.hasNext()) {
            Service service = (Service) g1VarListIterator2.next();
            try {
                this.state.tryStartTiming(service);
                service.startAsync();
            } catch (IllegalStateException e5) {
                logger.get().log(Level.WARNING, "Unable to start Service " + service, (Throwable) e5);
            }
        }
        return this;
    }

    public z1 startupTimes() {
        return this.state.startupTimes();
    }

    public ServiceManager stopAsync() {
        g1 g1VarListIterator = this.services.listIterator(0);
        while (g1VarListIterator.hasNext()) {
            ((Service) g1VarListIterator.next()).stopAsync();
        }
        return this;
    }

    public String toString() {
        a1.b bVar = new a1.b("ServiceManager");
        bVar.d(d0.k(this.services, new t(new r(NoOpService.class))), "services");
        return bVar.toString();
    }

    /* compiled from: MyApplication */
    public static final class ServiceManagerState {
        final Monitor.Guard awaitHealthGuard;
        final ListenerCallQueue<Listener> listeners;
        final Monitor monitor = new Monitor();
        final int numberOfServices;
        boolean ready;
        final l5 servicesByState;
        final IdentityHashMap<Service, b7.d0> startupTimers;
        final v4 states;
        final Monitor.Guard stoppedGuard;
        boolean transitioned;

        /* compiled from: MyApplication */
        public final class AwaitHealthGuard extends Monitor.Guard {
            public AwaitHealthGuard() {
                super(ServiceManagerState.this.monitor);
            }

            @Override // com.google.common.util.concurrent.Monitor.Guard
            public boolean isSatisfied() {
                int iCount = ServiceManagerState.this.states.count(Service.State.RUNNING);
                ServiceManagerState serviceManagerState = ServiceManagerState.this;
                return iCount == serviceManagerState.numberOfServices || serviceManagerState.states.contains(Service.State.STOPPING) || ServiceManagerState.this.states.contains(Service.State.TERMINATED) || ServiceManagerState.this.states.contains(Service.State.FAILED);
            }
        }

        /* compiled from: MyApplication */
        public final class StoppedGuard extends Monitor.Guard {
            public StoppedGuard() {
                super(ServiceManagerState.this.monitor);
            }

            @Override // com.google.common.util.concurrent.Monitor.Guard
            public boolean isSatisfied() {
                return ServiceManagerState.this.states.count(Service.State.FAILED) + ServiceManagerState.this.states.count(Service.State.TERMINATED) == ServiceManagerState.this.numberOfServices;
            }
        }

        public ServiceManagerState(q1 q1Var) {
            d0.d(2, "expectedValuesPerKey");
            EnumMap enumMap = new EnumMap(Service.State.class);
            q4 q4Var = new q4(1);
            s4 s4Var = new s4(enumMap);
            s4Var.f6265h = q4Var;
            this.servicesByState = s4Var;
            this.states = s4Var.f();
            this.startupTimers = new IdentityHashMap<>();
            this.awaitHealthGuard = new AwaitHealthGuard();
            this.stoppedGuard = new StoppedGuard();
            this.listeners = new ListenerCallQueue<>();
            this.numberOfServices = q1Var.size();
            s4Var.n(q1Var, Service.State.NEW);
        }

        public void addListener(Listener listener, Executor executor) {
            this.listeners.addListener(listener, executor);
        }

        public void awaitHealthy() {
            this.monitor.enterWhenUninterruptibly(this.awaitHealthGuard);
            try {
                checkHealthy();
            } finally {
                this.monitor.leave();
            }
        }

        public void awaitStopped() {
            this.monitor.enterWhenUninterruptibly(this.stoppedGuard);
            this.monitor.leave();
        }

        public void checkHealthy() {
            v4 v4Var = this.states;
            Service.State state = Service.State.RUNNING;
            if (v4Var.count(state) != this.numberOfServices) {
                StringBuilder sb = new StringBuilder("Expected to be healthy after starting. The following services are not running: ");
                sb.append(d0.m(this.servicesByState, new t(state == null ? y.f3319a : new s(state))));
                IllegalStateException illegalStateException = new IllegalStateException(sb.toString());
                Iterator it = this.servicesByState.get((Object) Service.State.FAILED).iterator();
                while (it.hasNext()) {
                    illegalStateException.addSuppressed(new FailedService((Service) it.next()));
                }
                throw illegalStateException;
            }
        }

        public void dispatchListenerEvents() throws Exception {
            b7.b.n("It is incorrect to execute listeners with the monitor held.", !this.monitor.isOccupiedByCurrentThread());
            this.listeners.dispatch();
        }

        public void enqueueFailedEvent(final Service service) {
            this.listeners.enqueue(new ListenerCallQueue.Event<Listener>(this) { // from class: com.google.common.util.concurrent.ServiceManager.ServiceManagerState.2
                final /* synthetic */ ServiceManagerState this$0;

                {
                    this.this$0 = this;
                }

                public String toString() {
                    return "failed({service=" + service + "})";
                }

                @Override // com.google.common.util.concurrent.ListenerCallQueue.Event
                public void call(Listener listener) {
                    listener.failure(service);
                }
            });
        }

        public void enqueueHealthyEvent() {
            this.listeners.enqueue(ServiceManager.HEALTHY_EVENT);
        }

        public void enqueueStoppedEvent() {
            this.listeners.enqueue(ServiceManager.STOPPED_EVENT);
        }

        public void markReady() {
            this.monitor.enter();
            try {
                if (!this.transitioned) {
                    this.ready = true;
                    return;
                }
                ArrayList arrayList = new ArrayList();
                s5 it = servicesByState().r().iterator();
                while (it.hasNext()) {
                    Service service = (Service) it.next();
                    if (service.state() != Service.State.NEW) {
                        arrayList.add(service);
                    }
                }
                throw new IllegalArgumentException("Services started transitioning asynchronously before the ServiceManager was constructed: " + arrayList);
            } finally {
                this.monitor.leave();
            }
        }

        public n2 servicesByState() {
            l2 l2Var = new l2();
            this.monitor.enter();
            try {
                for (Map.Entry entry : this.servicesByState.a()) {
                    if (!(entry.getValue() instanceof NoOpService)) {
                        l2Var.d(entry.getKey(), entry.getValue());
                    }
                }
                this.monitor.leave();
                i0 i0Var = (i0) l2Var.f6105a;
                if (i0Var == null) {
                    return r0.f6250j;
                }
                Collection collectionEntrySet = i0Var.entrySet();
                if (((AbstractCollection) collectionEntrySet).isEmpty()) {
                    return r0.f6250j;
                }
                g0 g0Var = (g0) collectionEntrySet;
                y1 y1Var = new y1(((i0) g0Var.f6147b).size());
                Iterator it = g0Var.iterator();
                int size = 0;
                while (it.hasNext()) {
                    Map.Entry entry2 = (Map.Entry) it.next();
                    Object key = entry2.getKey();
                    k2 k2VarL = k2.l(((j2) entry2.getValue()).i());
                    if (!k2VarL.isEmpty()) {
                        y1Var.b(key, k2VarL);
                        size = k2VarL.size() + size;
                    }
                }
                return new n2(y1Var.a(), size);
            } catch (Throwable th) {
                this.monitor.leave();
                throw th;
            }
        }

        public z1 startupTimes() {
            this.monitor.enter();
            try {
                ArrayList arrayListT = d0.t(this.startupTimers.size());
                for (Map.Entry<Service, b7.d0> entry : this.startupTimers.entrySet()) {
                    Service key = entry.getKey();
                    b7.d0 value = entry.getValue();
                    boolean z7 = value.f3296a;
                    if (!z7 && !(key instanceof NoOpService)) {
                        arrayListT.add(new r1(key, Long.valueOf(TimeUnit.MILLISECONDS.convert(z7 ? (System.nanoTime() - value.f3298c) + value.f3297b : value.f3297b, TimeUnit.NANOSECONDS))));
                    }
                }
                this.monitor.leave();
                a5 a5Var = a5.f6089a;
                b7.i iVar = new b7.i() { // from class: com.google.common.util.concurrent.ServiceManager.ServiceManagerState.1
                    @Override // b7.i
                    public Long apply(Map.Entry<Service, Long> entry2) {
                        return entry2.getValue();
                    }
                };
                a5Var.getClass();
                Collections.sort(arrayListT, new c0(iVar, a5Var));
                return z1.c(arrayListT);
            } catch (Throwable th) {
                this.monitor.leave();
                throw th;
            }
        }

        public void transitionService(Service service, Service.State state, Service.State state2) throws Exception {
            service.getClass();
            b7.b.f(state != state2);
            this.monitor.enter();
            try {
                this.transitioned = true;
                if (!this.ready) {
                    this.monitor.leave();
                    dispatchListenerEvents();
                    return;
                }
                if (!this.servicesByState.remove(state, service)) {
                    throw new IllegalStateException(b7.b.s("Service %s not at the expected location in the state map %s", service, state));
                }
                if (!this.servicesByState.put(state2, service)) {
                    throw new IllegalStateException(b7.b.s("Service %s in the state map unexpectedly at %s", service, state2));
                }
                b7.d0 d0Var = this.startupTimers.get(service);
                if (d0Var == null) {
                    d0Var = new b7.d0();
                    b7.b.n("This stopwatch is already running.", !d0Var.f3296a);
                    d0Var.f3296a = true;
                    d0Var.f3298c = System.nanoTime();
                    this.startupTimers.put(service, d0Var);
                }
                Service.State state3 = Service.State.RUNNING;
                if (state2.compareTo(state3) >= 0 && d0Var.f3296a) {
                    long jNanoTime = System.nanoTime();
                    b7.b.n("This stopwatch is already stopped.", d0Var.f3296a);
                    d0Var.f3296a = false;
                    d0Var.f3297b = (jNanoTime - d0Var.f3298c) + d0Var.f3297b;
                    if (!(service instanceof NoOpService)) {
                        ServiceManager.logger.get().log(Level.FINE, "Started {0} in {1}.", new Object[]{service, d0Var});
                    }
                }
                Service.State state4 = Service.State.FAILED;
                if (state2 == state4) {
                    enqueueFailedEvent(service);
                }
                if (this.states.count(state3) == this.numberOfServices) {
                    enqueueHealthyEvent();
                } else if (this.states.count(Service.State.TERMINATED) + this.states.count(state4) == this.numberOfServices) {
                    enqueueStoppedEvent();
                }
                this.monitor.leave();
                dispatchListenerEvents();
            } catch (Throwable th) {
                this.monitor.leave();
                dispatchListenerEvents();
                throw th;
            }
        }

        public void tryStartTiming(Service service) {
            this.monitor.enter();
            try {
                if (this.startupTimers.get(service) == null) {
                    IdentityHashMap<Service, b7.d0> identityHashMap = this.startupTimers;
                    b7.d0 d0Var = new b7.d0();
                    b7.b.n("This stopwatch is already running.", !d0Var.f3296a);
                    d0Var.f3296a = true;
                    d0Var.f3298c = System.nanoTime();
                    identityHashMap.put(service, d0Var);
                }
            } finally {
                this.monitor.leave();
            }
        }

        public void awaitStopped(long j10, TimeUnit timeUnit) throws TimeoutException {
            this.monitor.enter();
            try {
                if (this.monitor.waitForUninterruptibly(this.stoppedGuard, j10, timeUnit)) {
                    return;
                }
                throw new TimeoutException("Timeout waiting for the services to stop. The following services have not stopped: " + d0.m(this.servicesByState, new t(new b7.q(EnumSet.of(Service.State.TERMINATED, Service.State.FAILED)))));
            } finally {
                this.monitor.leave();
            }
        }

        public void awaitHealthy(long j10, TimeUnit timeUnit) throws TimeoutException {
            this.monitor.enter();
            try {
                if (!this.monitor.waitForUninterruptibly(this.awaitHealthGuard, j10, timeUnit)) {
                    throw new TimeoutException("Timeout waiting for the services to become healthy. The following services have not started: " + d0.m(this.servicesByState, new b7.q(k2.k(new Object[]{Service.State.NEW, Service.State.STARTING}, 2))));
                }
                checkHealthy();
            } finally {
                this.monitor.leave();
            }
        }
    }

    public void awaitHealthy(long j10, TimeUnit timeUnit) throws TimeoutException {
        this.state.awaitHealthy(j10, timeUnit);
    }

    public void awaitStopped(long j10, TimeUnit timeUnit) throws TimeoutException {
        this.state.awaitStopped(j10, timeUnit);
    }

    @Override // com.google.common.util.concurrent.ServiceManagerBridge
    public n2 servicesByState() {
        return this.state.servicesByState();
    }

    /* compiled from: MyApplication */
    public static abstract class Listener {
        public void healthy() {
        }

        public void stopped() {
        }

        public void failure(Service service) {
        }
    }
}
