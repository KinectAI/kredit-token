/**
 * Module     : WhoAmI.mo
 * License    : Apache 2.0 with LLVM Exception
 * Stability  : Experimental
 */

import Hex "../vendor/motoko-hex/src/Hex";
import Util "../src/Util";

actor WhoAmI {

  // Returns the identity of the caller in a human readable format.
  public shared {
    caller = caller;
  } func whoami() : async Text {
    return Hex.encode(Util.unpack(caller));
  };
};
