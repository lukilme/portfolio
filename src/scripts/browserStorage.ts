type StorageType = 'localStorage' | 'sessionStorage';
// sessionStorage - no data persistence
// localStorage - with data persistence

export class BrowserStorage {
    private readonly storage: Storage;

    constructor(storageType: StorageType = 'localStorage') {
        if (storageType !== 'localStorage' && storageType !== 'sessionStorage') {
            throw new Error('Invalid storage type. Use "localStorage" or "sessionStorage".');
        }
        this.storage = window[storageType];
    }

    setItem<T>(key: string, value: T): void {
        this.storage.setItem(key, JSON.stringify(value));
    }

    getItem<T>(key: string): T | null {
        const storedValue = this.storage.getItem(key);
        if (!storedValue) {
            return null;
        }
        return JSON.parse(storedValue) as T;
    }

    removeItem(key: string): void {
        this.storage.removeItem(key);
    }

    hasItem(key: string): boolean {
        return this.storage.getItem(key) !== null;
    }

    clear(): void {
        this.storage.clear();
    }
}
